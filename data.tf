data "terraform_remote_state" "apim" {
  backend = "local"

  config = {
    path = "./../digital_infra_apim/states/${var.environment}/terraform.tfstate"
  }
}