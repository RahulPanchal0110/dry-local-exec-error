terraform {
  cloud {

    organization = "Rahul-hashicorp-test"

    workspaces {
      name = "dry-run-local-exec123"
    }
  }
}
resource "null_resource" "example5" {


  provisioner "local-exec" {
    interpreter = ["/bin/bash", "-c"]
    command = <<EOH
   az --version
EOH
  }
}

