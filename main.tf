terraform {
  cloud {

    organization = "Rahul-hashicorp-test"

    workspaces {
      name = "dry-run-local-exec123"
    }
  }
}
resource "null_resource" "example" {


  provisioner "local-exec" {
    interpreter = ["/bin/bash", "-c"]
    command = <<EOH
   az lock create --name LockGroup --lock-type CanNotDelete --resource-group exampleGroup
EOH
  }
}

