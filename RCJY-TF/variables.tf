variable "billing_account" {
  type    = string
  default = "01837F-3A88AD-FD8B48"
}

#===============================================================================================================================
#===============================================================================================================================

variable "vpc_configs" {
  description = "List of VPCs and their subnet configurations"
  type = list(object({
    name        = string
    subnet_name = string
    cidr_range  = string
    region      = string
  }))
  default = [
    {
      name        = "rcjy-business-vpc"
      subnet_name = "rcjy-business-subnet"
      cidr_range  = "172.26.20.0/24"
      region      = "me-central2"
    },
    {
      name        = "rcjy-health-vpc"
      subnet_name = "rcjy-health-subnet"
      cidr_range  = "172.26.21.0/24"
      region      = "me-central2"
    },
    {
      name        = "rcjy-education-vpc"
      subnet_name = "rcjy-education-subnet"
      cidr_range  = "172.26.22.0/24"
      region      = "me-central2"
    },
    {
      name        = "rcjy-trusted-hub-vpc"
      subnet_name = "rcjy-trusted-hub-subnet"
      cidr_range  = "172.26.10.0/24"
      region      = "me-central2"
    },
    {
      name        = "rcjy-untrusted-hub-vpc"
      subnet_name = "rcjy-untrusted-hub-subnet"
      cidr_range  = "172.26.11.0/24"
      region      = "me-central2"
    },
    {
      name        = "rcjy-managment-vpc"
      subnet_name = "rcjy-managment-subnet"
      cidr_range  = "172.26.12.0/24"
      region      = "me-central2"
    },
    {
      name        = "rcjy-hybrid-connectivity-vpc"
      subnet_name = "rcjy-hybrid-connectivity-subnet"
      cidr_range  = "172.26.13.0/24"
      region      = "me-central2"
    }
  ]
}

#===============================================================================================================================
#===============================================================================================================================

variable "routing_mode" {
  type        = string
  default     = "GLOBAL"
  description = "The network routing mode (default 'GLOBAL')"
}

