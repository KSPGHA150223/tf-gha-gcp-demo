gcp_service_account_key = file("${{ secrets.GCP_SA_KEY }}")
project_id              = "your-gcp-project-id"
region                  = "us-central1"
zone                    = "us-central1-a"
machine_type            = "e2-medium"
image_family            = "debian-10"
image_project           = "debian-cloud"
instance_name           = "my-vm-instance"
