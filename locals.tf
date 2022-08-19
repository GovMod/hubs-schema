
variable region {
    default = "us-ashburn-1"
    #default = "us-phoenix-1"
}

  # Permanent
variable compartment_root {}
variable compartment_base {}
variable network {}
variable cidrmask {}
variable cidrsubnet {}
      
        
variable project_name {
  description = "Mozilla Hubs Port to OCI"
  type        = string
  default     = "MarketplaceHubs"
}

variable environment {
  description = "Marketplace"
  type        = string
  default     = "Marketplace"
}

variable resource_tags {
    type = map
    default ={}
}
    
locals {
    required_tags ={
        project = var.project_name,
        environment = var.environment,
        launch-id = uuidv5("oid",timestamp()),
        slack = "",
        discord = "",
        email = "",
        ops   = "terraform",
        Purpose = "Hubs Port to OCI"
        Lifecycle = "Marketplace"
        }
    tags = merge(var.resource_tags, local.required_tags)

    }    

