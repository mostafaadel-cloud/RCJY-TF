# resource "google_compute_network_peering" "v1spc_vpc_prd_01_vpc_with_ddan_vpc_prd_01_vpc" {
#   name                                = "v1spc-vpc-prd-01-vpc-with-ddan-vpc-prd-01-vpc"
#   network                             = var.v1spc_vpc_prd_01_vpc_self_link
#   peer_network                        = var.ddan_vpc_prd_01_vpc_self_link
#   export_subnet_routes_with_public_ip = false
#   import_custom_routes                = true
#   export_custom_routes                = true
# }

# resource "google_compute_network_peering" "v1spc_vpc_prd_01_vpc_with_dsm_vpc_prd_01_vpc" {
#   name                                = "v1spc-vpc-prd-01-vpc-with-dsm-vpc-prd-01-vpc-self-link"
#   network                             = var.v1spc_vpc_prd_01_vpc_self_link
#   peer_network                        = var.dsm_vpc_prd_01_vpc_self_link
#   export_subnet_routes_with_public_ip = false
#   import_custom_routes                = true
#   export_custom_routes                = true
# }

# resource "google_compute_network_peering" "v1spc_vpc_prd_01_vpc_with_sporact_vpc_prd_01" {
#   name                                = "v1spc-vpc-prd-01-vpc-with-sporact-vpc-prd-01"
#   network                             = var.v1spc_vpc_prd_01_vpc_self_link
#   peer_network                        = var.sporact_vpc_prd_01_self_link
#   export_subnet_routes_with_public_ip = false
#   import_custom_routes                = true
#   export_custom_routes                = true
# }

# resource "google_compute_network_peering" "v1spc_vpc_prd_01_vpc_with_apex_vpc_prd_01" {
#   name                                = "v1spc-vpc-prd-01-vpc-with-apex-vpc-prd-01"
#   network                             = var.v1spc_vpc_prd_01_vpc_self_link
#   peer_network                        = var.apex_vpc_prd_01_vpc_self_link
#   export_subnet_routes_with_public_ip = false
#   import_custom_routes                = true
#   export_custom_routes                = true
# }

#========================================================================================================#

# resource "google_compute_network_peering" "ddan_vpc_prd_01_vpc_with_v1spc_vpc_prd_01_vpc_self_link" {
#   name                                = "ddan-with-v1spc"
#   network                             = var.ddan_vpc_prd_01_vpc_self_link
#   peer_network                        = var.v1spc_vpc_prd_01_vpc_self_link
#   export_subnet_routes_with_public_ip = false
#   import_custom_routes                = true
#   export_custom_routes                = true
# }

resource "google_compute_network_peering" "ddan_with_dsm" {
  name                                = "ddan-with-dsm"
  network                             = var.ddan_vpc_prd_01_vpc_self_link
  peer_network                        = var.dsm_vpc_prd_01_vpc_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "ddan_with_spract" {
  name                                = "ddan-with-spoact"
  network                             = var.ddan_vpc_prd_01_vpc_self_link
  peer_network                        = var.sporact_vpc_prd_01_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "ddan_with_apex" {
  name                                = "ddan-with-apex"
  network                             = var.ddan_vpc_prd_01_vpc_self_link
  peer_network                        = var.apex_vpc_prd_01_vpc_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

#========================================================================================================#

# resource "google_compute_network_peering" "dsm_with_v1spc" {
#   name                                = "dsm-with-v1spc"
#   network                             = var.dsm_vpc_prd_01_vpc_self_link
#   peer_network                        = var.v1spc_vpc_prd_01_vpc_self_link
#   export_subnet_routes_with_public_ip = false
#   import_custom_routes                = true
#   export_custom_routes                = true
# }

resource "google_compute_network_peering" "dsm_with_ddan" {
  name                                = "dsm-with-ddan"
  network                             = var.dsm_vpc_prd_01_vpc_self_link
  peer_network                        = var.ddan_vpc_prd_01_vpc_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "dsm_with_sporact" {
  name                                = "dsm-with-sporact"
  network                             = var.dsm_vpc_prd_01_vpc_self_link
  peer_network                        = var.sporact_vpc_prd_01_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "dsm_with_apex" {
  name                                = "dsm-with-apex"
  network                             = var.dsm_vpc_prd_01_vpc_self_link
  peer_network                        = var.apex_vpc_prd_01_vpc_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

#========================================================================================================#

# resource "google_compute_network_peering" "sporact_with_v1spc" {
#   name                                = "sporact-with-v1spc"
#   network                             = var.sporact_vpc_prd_01_self_link
#   peer_network                        = var.v1spc_vpc_prd_01_vpc_self_link
#   export_subnet_routes_with_public_ip = false
#   import_custom_routes                = true
#   export_custom_routes                = true
# }

resource "google_compute_network_peering" "sporact_with_ddan" {
  name                                = "sporact-with-ddan"
  network                             = var.sporact_vpc_prd_01_self_link
  peer_network                        = var.ddan_vpc_prd_01_vpc_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "sporact_with_dsm" {
  name                                = "sporact-with-dsm2"
  network                             = var.sporact_vpc_prd_01_self_link
  peer_network                        = var.dsm_vpc_prd_01_vpc_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "sporact_with_apex" {
  name                                = "sporact-with-dsm"
  network                             = var.sporact_vpc_prd_01_self_link
  peer_network                        = var.apex_vpc_prd_01_vpc_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

#========================================================================================================#

# resource "google_compute_network_peering" "apex_with_v1spc" {
#   name                                = "apex-with-v1spc"
#   network                             = var.apex_vpc_prd_01_vpc_self_link
#   peer_network                        = var.v1spc_vpc_prd_01_vpc_self_link
#   export_subnet_routes_with_public_ip = false
#   import_custom_routes                = true
#   export_custom_routes                = true
# }

resource "google_compute_network_peering" "apex_with_ddan" {
  name                                = "apex-with-ddan"
  network                             = var.apex_vpc_prd_01_vpc_self_link
  peer_network                        = var.ddan_vpc_prd_01_vpc_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "apex_with_dsm" {
  name                                = "apex-with-dsm"
  network                             = var.apex_vpc_prd_01_vpc_self_link
  peer_network                        = var.dsm_vpc_prd_01_vpc_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}

resource "google_compute_network_peering" "apex_with_sporact" {
  name                                = "apex-with-sporact"
  network                             = var.apex_vpc_prd_01_vpc_self_link
  peer_network                        = var.sporact_vpc_prd_01_self_link
  export_subnet_routes_with_public_ip = false
  import_custom_routes                = true
  export_custom_routes                = true
}
  