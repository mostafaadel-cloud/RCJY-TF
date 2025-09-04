locals {
  vpcs = [
    "rcjy-business-vpc",
    "rcjy-health-vpc",
    "rcjy-education-vpc",
    "rcjy-trusted-hub-vpc",
    "rcjy-untrusted-hub-vpc",
    "rcjy-managment-vpc",
  ]
}

resource "google_compute_network_peering" "to_hybrid" {
  for_each = toset(local.vpcs)

  name                                = "${each.key}-to-hybrid"
  network                             = module.vpc[each.key].self_link
  peer_network                        = module.vpc["rcjy-hybrid-connectivity-vpc"].self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "from_hybrid" {
  for_each = toset(local.vpcs)

  name                                = "hybrid-to-${each.key}"
  network                             = module.vpc["rcjy-hybrid-connectivity-vpc"].self_link
  peer_network                        = module.vpc[each.key].self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}
