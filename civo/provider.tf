provider "civo" {
  token = var.civotoken
}

terraform {
  required_providers {
    civo = {
      source = "civo/civo"
      version = "1.0.18"
    }
  }
}
