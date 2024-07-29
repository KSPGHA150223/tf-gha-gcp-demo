project_id           = "mygcpproj253"
region               = "us-central1"
zone                 = "us-central1-a"
machine_type         = "e2-medium"
image_family         = "debian-10"
image_project        = "debian-cloud"
instance_name        = "my-vm-instance"
# gcp_service_account_key = var.gcp_service_account_key
gcp_service_account_key = file("${getenv('GITHUB_ENV')}/GCP_SA_KEY")