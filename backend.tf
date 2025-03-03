/*
terraform {
  cloud {
    organization = "terraform-hyw"
    ## Required for Terraform Enterprise; Defaults to app.terraform.io for HCP Terraform
    hostname = "app.terraform.io"

    workspaces {
      name = "tf-vcs-workflow-demo"
      # name = "tf-vcs-workflow-planonly"
    }
  }
}

*/
terraform {
  backend "s3" {
    bucket       = "hellocloud-master-terraform-state2"
    key          = "prod/terraform.tfstate"
    region       = "ap-southeast-1"
    encrypt      = true
    use_lockfile = true
    profile      = "cnfp_master_admin"
    # profile = "master-programmatic-admin"
    # access_key = data.vault_kv_secret_v2.tfstate_credentials.data["aws_access_key_id"]
    # secret_key = data.vault_kv_secret_v2.tfstate_credentials.data["aws_secret_access_key"]
  }
}



  
  

