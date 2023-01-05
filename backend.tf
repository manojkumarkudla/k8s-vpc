terraform {
  backend "s3" {
    bucket         = "talent-academy-manojk-kudla-lab-tfstate"
    key            = "talent-academy/k8s_vpc/terraform.tfstates"
    region         = "eu-west-1"
    dynamodb_table = "terraform-lock"
  }
}