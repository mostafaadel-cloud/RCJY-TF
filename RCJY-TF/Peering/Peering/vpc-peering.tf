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
