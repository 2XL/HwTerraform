resource "aws_instance" "app" {
  count = 3
  instance_type = "t2.micro"
  ami = "ami-408c7f28"

  user_data = <<EOF
#!/bin/bash
echo "SetEnv DB_URL ${aws_db_instance.db.address}" >> /var/www/html/.htaccess
sudo service httpd start
EOF
}

resource "aws_db_instance" "db" {
  allocated_storage = 100
  engine = "mysql"
  engine_version = "5.6.17"
  instance_class = "db.t2.micro"
  name = "mydb"
  username = "admin"
  password = "password"
}

resource "aws_elb" "load_balancer" {
  name = "frontend-load-balancer"
  instances = ["${aws_instance.app.*.id}"]

  listener {
    instance_port = 8000
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
  }
}