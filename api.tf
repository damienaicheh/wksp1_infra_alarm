module "cat_api_definition" {
  source = "git::github.com/damienaicheh/modules_api_definition?ref=1.1.0"
  apim = {
    name                = data.terraform_remote_state.apim.outputs.apim_name
    resource_group_name = data.terraform_remote_state.apim.outputs.resource_group_name
    workspace_name = "TO_DEFINE"
  }
  api = {
    name = "TO_DEFINE"
    path = "TO_DEFINE"
    product_ids = [
      "TO_DEFINE"
    ]
    swagger_definition_content_format = "TO_DEFINE"
    swagger_definition_content_value  = "TO_DEFINE"
  }
  inbound_policies = [
    "TO_DEFINE",
    "TO_DEFINE",
    "TO_DEFINE"
  ]
}
