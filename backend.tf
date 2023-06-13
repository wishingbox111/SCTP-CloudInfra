terraform {
  backend "s3" {
    bucket             = "sctp-ce2-tfstate-bkt" #bucket need to be created outside terraform
    key                = "enchen-tf1-s3.tfstate"
    region             = "ap-southeast-1"
  }
}
