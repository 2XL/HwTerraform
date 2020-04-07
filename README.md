# hwTerraform
Terraform Up &amp;&amp; Down



# requisite:


> [install] (https://www.terraform.io/downloads.html)

> terraform
```
usage: terraform [--version] [--help] <command> [<args>]

Available commands are:
    apply       Builds or changes infrastructure
    destroy     Destroy Terraform-managed infrastructure
    get         Download and install modules for the configuration
    graph       Create a visual graph of Terraform resources
    (...)
```  

> export AWS_ACCESS_KEY_ID=(your access key id)
> export AWS_SECRET_ACCESS_KEY=(your secret access key)


# deploy

 * single server
 
```
# main.web-server.tf
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-2d39803a"
  instance_type = "t2.micro"
  tag {
    name = "terraform-example"  # instance name
  }
}

#resource "<provider_type>" "<resource_name_or_id>" {
#  [CONFIG ...]
#}


```

# terraform plan: shows the changes that will be applied to achieve the declared recipe
# <git status> 

+ features to add
- features to remove
~ features to alter


# terraform apply: to apply the changes











The goal of DevOps is to make software delivery vastly more efficient.


There are four core values in the DevOps movement: (sometimes abbreviated as the acronym CAMS). 
 * Culture, 
 * Automation, 
 * Measurement, and 
 * Sharing 


There are four broad categories of IAC tools:   
 * Ad hoc scripts
 * Configuration management tools
 * Server templating tools
 * Orchestration tools

Benefits of infrastructure as code:
 * Self-service
 * Speed and safety
 * Documentation
 * Version control
 * Validation
 * Reuse
 * Happiness

Here are the main trade-offs to consider:
 * Configuration management vs orchestration
 * Mutable infrastructure vs immutable infrastructure
 * Procedural language vs declarative language
 * Client/server architecture vs client-only architecture
 * Large community vs small community
 * Mature vs cutting-edge




**acronims**

(IAC) infrastructure as code 

(AMI) Amazon Machine Image 

(IAM) Identity and Access Management# HwTerraform
