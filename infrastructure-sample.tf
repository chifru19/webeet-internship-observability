# This snippet demonstrates the restored Foundation logic (F2) 
# and the new Trace-Log correlation (B3) implemented during the internship.

module "appdb" {
  source = "./modules/appdb"

  # B3: Injected Logstash host for observability pipeline
  logstash_host = "10.0.x.x" 

  # F2: Restored Vital Foundation Logic (SSM & EBS)
  db_volume_id            = "vol-0123456789abcdef0"
  ssm_app_image_name_path = "/layered-infra/qa/app_image_name"
  ssm_postgres_user_path  = "/layered-infra/qa/postgres_user"
}
