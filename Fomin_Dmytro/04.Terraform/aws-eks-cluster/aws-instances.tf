# # Description of used EC2 instances in selected Data Center
# resource "aws_instance" "app_server" {
#   # AMI (Amazon Machine Images) and AMI-id which can be 
#   # finded at "AMI Catalog" on AWS
#   ami = "ami-830c94e3"
#   # EC2 instance,type can be finded at "Instance Types"
#   instance_type = "t2.micro"
#   # AWS tags which describe this instance
#   tags = {
#     Name = "ExampleAppServerInstance"
#   }
# }
