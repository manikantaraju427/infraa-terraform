# infraa-terraform
Automating Deployment and Scaling for a Web Application

-> $git clone https://github.com/DevOps-Guvi/Hackathon-Application.git

->cd directory name

# install docker on my aws-linux system

->$Vi Dockerfile

*FROM node:14

*WORKDIR /usr/src/app

*COPY package*.json ./

*RUN npm install

*COPY . .

*EXPOSE 5000

*CMD [ "npm", "start" ]

->$docker build -t my-web-app .

->$docker run -p 5000:5000 -d my-web-app

->Than I check with instance ip+5000/home application up end running

# install terraform with amazon linux

->terraform –version

->mkdir terraform  , ->cd terraform

->main.tf

module "ec2_instance" {

  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  
  instance_type          = "t2.micro"
  
  key_name               = "keypair"
  
  monitoring             = true
  
  vpc_security_group_ids = ["sg-042c77b2519cfaec2"]
  
  subnet_id              = "subnet-01cbaaff9d4c8aab4"

  tags = {
  
    Terraform   = "true"
    
    Environment = "dev"
  
  }
  
}

# Go to amazon console ->I.A.M ,add user , create user with permissions , download access key

->download aws cli

->Aws configure: Give credentials

->$Terraform init

->$terraform plan

->$terraform apply

# Ec2 instance created with terraform

% git hub 

Create repos 

1)application-repo

2)terraform-repo

Pushed application file in application repo

Pushed deployment files in infra-repo
