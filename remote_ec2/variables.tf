variable "access_key" {
  type = string
  description = "This is access key"
  default= "AKIATDKLKNCOC7LOAFNR"
}

variable "secret_key" {
  type = string
  description = "This is secret key"
  default = "bSGIFEH4vpEKTSoHqRL5ddOKpv5lqCwyBNrK2Igv"

}


variable "region" {
  type = string
  default = "us-east-1"
}


variable "profile" {
  type = string
  default = "terraform"
}


variable "ami" {
  type = string
  default = "ami-068c0051b15cdb816"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}



