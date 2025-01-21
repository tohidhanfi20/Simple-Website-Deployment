provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0ed194d7eff6d2f81" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformWebServer"
  }

  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo systemctl start httpd
    sudo systemctl enable httpd
    echo "<h1>Welcome to my Cloud Website</h1>" > /var/www/html/index.html
  EOF
}

output "instance_ip" {
  value = aws_instance.web.public_ip
}
