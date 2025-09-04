terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

#===============================================================================================================================
#===============================================================================================================================

#fill all the locals below
locals {
  org_id = "563436578313"
  region = "me-central2"
  zone   = "me-central2-a"
}

#===============================================================================================================================
#===============================================================================================================================

provider "google" {
  region = local.region
  zone   = local.zone

}

#===============================================================================================================================
#===============================================================================================================================

terraform {
  backend "gcs" {
    bucket = "rcjy-tf-state"
    prefix = "terraform/state"
  }
}

#===============================================================================================================================
#===============================================================================================================================

module "Org_Hierarcy" {
  source          = "./Organization_Hierarchy"
  org_id          = local.org_id
  billing_account = var.billing_account
}

#===============================================================================================================================
#===============================================================================================================================

module "VPCs" {
  source      = "./Networking/VPCs"
  project_id  = module.Org_Hierarcy.network_project
  vpc_configs = var.vpc_configs
}

#===============================================================================================================================
#===============================================================================================================================

module "APIs" {
  source                         = "./APIs"
  network_project                = module.Org_Hierarcy.network_project
  logging_and_monitoring_project = module.Org_Hierarcy.logging_and_monitoring_project

  application_projects = toset([
    module.Org_Hierarcy.med_pr_project,
    module.Org_Hierarcy.med_dev_project,
    module.Org_Hierarcy.med_test_project,
    module.Org_Hierarcy.edu_pr_project,
    module.Org_Hierarcy.edu_dev_project,
    module.Org_Hierarcy.edu_test_project,
    module.Org_Hierarcy.bus_pr_project,
    module.Org_Hierarcy.bus_dev_project,
    module.Org_Hierarcy.bus_test_project,
  ])

  depends_on = [module.Org_Hierarcy]
}

#===============================================================================================================================
#===============================================================================================================================

module "Centralized_Logging" {
  source                         = "./Centralized_Logging"
  org_id                         = local.org_id
  logging_and_monitoring_project = module.Org_Hierarcy.logging_and_monitoring_project
  location                       = local.region
  network_project                = module.Org_Hierarcy.network_project
  med_pr_project                 = module.Org_Hierarcy.med_pr_project
  med_dev_project                = module.Org_Hierarcy.med_dev_project
  med_test_project               = module.Org_Hierarcy.med_test_project
  edu_pr_project                 = module.Org_Hierarcy.edu_pr_project
  edu_dev_project                = module.Org_Hierarcy.edu_dev_project
  edu_test_project               = module.Org_Hierarcy.edu_test_project
  bus_pr_project                 = module.Org_Hierarcy.bus_pr_project
  bus_dev_project                = module.Org_Hierarcy.bus_dev_project
  bus_test_project               = module.Org_Hierarcy.bus_test_project
  depends_on                     = [module.VPCs, module.APIs]
}

#===============================================================================================================================
#===============================================================================================================================

module "iam_runner" {
  source    = "./IAM"
  runner_sa = "971573762455-compute@developer.gserviceaccount.com"
  application_projects = toset([
    module.Org_Hierarcy.med_pr_project,
    module.Org_Hierarcy.med_dev_project,
    module.Org_Hierarcy.med_test_project,
    module.Org_Hierarcy.edu_pr_project,
    module.Org_Hierarcy.edu_dev_project,
    module.Org_Hierarcy.edu_test_project,
    module.Org_Hierarcy.bus_pr_project,
    module.Org_Hierarcy.bus_dev_project,
    module.Org_Hierarcy.bus_test_project,
    module.Org_Hierarcy.network_project,
  ])
  scoping_project = module.Org_Hierarcy.logging_and_monitoring_project
}

#===============================================================================================================================
#===============================================================================================================================

module "Shared_VPC" {
  source          = "./Networking/shared vpc"
  network_project = module.Org_Hierarcy.network_project
  edu_pr_project  = module.Org_Hierarcy.edu_pr_project
  depends_on      = [module.APIs]
}

#===============================================================================================================================
#===============================================================================================================================

module "firewalls" {
  source          = "./Networking/firewalls"
  network_project = module.Org_Hierarcy.network_project
}

#===============================================================================================================================
#===============================================================================================================================

# VPC Peering Module
module "vpc-peering" {
  source                        = "./Networking/vpc-peering"
  rcjy_business_vpc_to_hybrid   = "rcjy-business-vpc"
  hybrid_vpc                    = "rcjy-hybrid-connectivity-vpc"
  rcjy-business-vpc             = "rcjy-business-vpc"
  rcjy-health-vpc               = "rcjy-health-vpc"
  rcjy-education-vpc            = "rcjy-education-vpc"
  rcjy-trusted-hub-vpc          = "rcjy-trusted-hub-vpc"
  rcjy-managment-vpc            = "rcjy-managment-vpc"
}

#===============================================================================================================================
#===============================================================================================================================