variable "aws_region" {
    default = "us-east-1"
}

variable "key_name" {
    default = "pratice_key"
}

variable "vpc_cidr" {
    default = "172.0.0.0/24"
}

variable "subnets_cidr" {
    type = list(string)
    default = ["172.0.0.0/25", "172.0.0.128/25"]
}

variable "availability_zone" {
    type = list(string)
    default = ["us-east-1a", "us-east-1b"]
}

variable "kubernetes_ami" {
    default = "ami-09e67e426f25ce0d7"
}

variable "master_instance_type" {
    default = "t2.medium"
}

variable "worker_instance_type" {
    default = "t2.medium"
}