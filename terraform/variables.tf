###########################################
############### ec2 vars ##################
###########################################

variable "instance_type" {
  type = string
}

variable "ami" {
  type = string
}

variable "name_of_ec2" {
  type = string
}

variable "public_key_name" {
  type = string
}

variable "user_data_path" {
  type = string
}

###########################################
############### sg vars ##################
###########################################

variable "sg_name" {
  type = string
}

variable "sg_description" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "cidr_ipv4" {
  type = string
}