locals {
  resource_lowercase_array  = [lower(var.environment), substr(lower(var.location), 0, 2), lower(var.application), var.resource_group_name_suffix]
  resource_suffix_kebabcase = join("-", local.resource_lowercase_array)

  tags = merge(
    var.tags,
    tomap(
      {
        "Deployment"       = "terraform",
        "SubDirectoryName" = "${var.workspace}_infra_${var.application}",
        "Environment"      = var.environment,
        "Location"         = var.location,
      }
    )
  )
}
