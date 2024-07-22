provider "argocd" {
 server_addr = "argo.ved-tech.net"
 username = admin
password = secretpassword
}

provider "aws" {
  region = "ap-southeast-2"
}
