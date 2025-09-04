resource "google_compute_network_peering" "rcjy_business_vpc_to_hybrid" {
  name                                = "rcjy-business-vpc-to-hybrid"
  network                             = var.rcjy-business-vpc
  peer_network                        = var.hybrid_vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "from_hybrid_to_rcjy_business_vpc" {
  name                                = "from-hybrid-to-rcjy-business-vpc"
  network                             = var.hybrid_vpc
  peer_network                        = var.rcjy-business-vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}
resource "google_compute_network_peering" "rcjy_health_vpc_to_hybrid" {
  name                                = "rcjy-health-vpc-to-hybrid"
  network                             = var.rcjy-health-vpc
  peer_network                        = var.hybrid_vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "from_hybrid_to_rcjy_health_vpc" {
  name                                = "from-hybrid-to-rcjy-health-vpc"
  network                             = var.hybrid_vpc
  peer_network                        = var.rcjy-health-vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}
resource "google_compute_network_peering" "rcjy_education_vpc_to_hybrid" {
  name                                = "rcjy-education-vpc-to-hybrid"
  network                             = var.rcjy-education-vpc
  peer_network                        = var.hybrid_vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "from_hybrid_to_rcjy_education_vpc" {
  name                                = "from-hybrid-to-rcjy-education-vpc"
  network                             = var.hybrid_vpc
  peer_network                        = var.rcjy-education-vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}
resource "google_compute_network_peering" "rcjy_trusted_hub_vpc_to_hybrid" {
  name                                = "rcjy-trusted-hub-vpc-to-hybrid"
  network                             = var.rcjy-trusted-hub-vpc
  peer_network                        = var.hybrid_vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "from_hybrid_to_rcjy_trusted_hub_vpc" {
  name                                = "from-hybrid-to-rcjy-trusted-hub-vpc"
  network                             = var.hybrid_vpc
  peer_network                        = var.rcjy-trusted-hub-vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}
resource "google_compute_network_peering" "rcjy_untrusted_hub_vpc_to_hybrid" {
  name                                = "rcjy-untrusted-hub-vpc-to-hybrid"
  network                             = var.rcjy-untrusted-hub-vpc
  peer_network                        = var.hybrid_vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "from_hybrid_to_rcjy_untrusted_hub_vpc" {
  name                                = "from-hybrid-to-rcjy-untrusted-hub-vpc"
  network                             = var.hybrid_vpc
  peer_network                        = var.rcjy-untrusted-hub-vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}
resource "google_compute_network_peering" "rcjy_managment_vpc_to_hybrid" {
  name                                = "rcjy-managment-vpc-to-hybrid"
  network                             = var.rcjy-managment-vpc
  peer_network                        = var.hybrid_vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "from_hybrid_to_rcjy_managment_vpc" {
  name                                = "from-hybrid-to-rcjy-managment-vpc"
  network                             = var.hybrid_vpc
  peer_network                        = var.rcjy-managment-vpc
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}