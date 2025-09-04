#################################################### FOLDERS #################################################################
resource "google_folder" "health_folder" {
  display_name = "RCJY-Health-Folder"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "education_folder" {
  display_name = "RCJY-Education-Folder"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "business_folder" {
  display_name = "RCJY-Business-Folder"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "networking_folder" {
  display_name = "RCJY-Networking-Folder"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "logging_folder" {
  display_name = "RCJY-Log-Mon-Folder"
  parent       = "organizations/${var.org_id}"
}

########################################## Projects under Health Folder ########################################################################

resource "google_project" "med_pr_project" {
  name            = "RCJY-MED-PR-Project"
  project_id      = "rcjy-med-pr-project"
  folder_id       = google_folder.health_folder.id
  billing_account = var.billing_account
}

resource "google_project" "med_dev_project" {
  name            = "RCJY-MED-Dev-Project"
  project_id      = "rcjy-med-dev-project"
  folder_id       = google_folder.health_folder.id
  billing_account = var.billing_account
}

resource "google_project" "med_test_project" {
  name       = "RCJY-MED-Test-Project"
  project_id = "rcjy-med-test-project"
  folder_id  = google_folder.health_folder.id
  billing_account = var.billing_account
}

#################################### Projects under Education Folder ########################################################################

resource "google_project" "edu_pr_project" {
  name       = "RCJY-EDU-PR-Project"
  project_id = "rcjy-edu-pr-project"
  folder_id  = google_folder.education_folder.id
  billing_account = var.billing_account
}

resource "google_project" "edu_dev_project" {
  name       = "RCJY-EDU-Dev-Project"
  project_id = "rcjy-edu-dev-project"
  folder_id  = google_folder.education_folder.id
  billing_account = var.billing_account
}

resource "google_project" "edu_test_project" {
  name       = "RCJY-EDU-Test-Project"
  project_id = "rcjy-edu-test-project"
  folder_id  = google_folder.education_folder.id
  billing_account = var.billing_account
}

#################################### Projects under Business Folder ########################################################################

resource "google_project" "bus_pr_project" {
  name       = "RCJY-BUS-PR-Project"
  project_id = "rcjy-bus-pr-project"
  folder_id  = google_folder.business_folder.id
  billing_account = var.billing_account
}

resource "google_project" "bus_dev_project" {
  name       = "RCJY-BUS-Dev-Project"
  project_id = "rcjy-bus-dev-project"
  folder_id  = google_folder.business_folder.id
  billing_account = var.billing_account
}

resource "google_project" "bus_test_project" {
  name       = "RCJY-BUS-Test-Project"
  project_id = "rcjy-bus-test-project"
  folder_id  = google_folder.business_folder.id
  billing_account = var.billing_account
}

#################################### Network Project ########################################################################

resource "google_project" "network_project" {
  name       = "RCJY-Networking-Project"
  project_id = "rcjy-networking-project"
  folder_id  = google_folder.networking_folder.id
  billing_account = var.billing_account
}

#################################### Logging Project ########################################################################

resource "google_project" "logging_and_monitoring_project" {
  name       = "RCJY-Log-Mon-project"
  project_id = "rcjy-log-mon-project"
  folder_id  = google_folder.logging_folder.id
  billing_account = var.billing_account
}
      
