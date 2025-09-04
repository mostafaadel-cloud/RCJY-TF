
resource "google_compute_firewall" "allow_ssh_and_hhtp_https_for_rackware" {
  name        = "allow-access-rackware"
  network     = "rcjy-education-vpc"
  project     = var.network_project
  priority    = 1000
  direction   = "INGRESS"
  source_tags = ["rackware"]
  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443"]

  }
  source_ranges = ["0.0.0.0/0"]

}

   
