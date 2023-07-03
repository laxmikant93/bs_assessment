[source code](https://github.com/laxmikant93/bs_assessment.git)

Basically above source code includes a nextjs frontend static page application whcih describes a space tourism blog

=====Requirements=====

1.how to deploy the source code locally.
run the following commands

$ git clone https://github.com/laxmikant93/bs_assessment.git

$ npm install

$ npm run build

$ npm start

===note===

please run them on any ec2 instance for quick results as sometimes laptops processor might take time to build.(e.g. in my case i took c5.large instance for running them)

while you run npm start command
it will run http://localhost:5000/
but in my case it's my ip was running on 65.2.150.15
so while i hit 65.2.150.15:3000 in browser
it was running till i get out of npm start terminal

2.what are the required tools for running these codes on aws amplify?

you need:

install AWS cli

install IaC tool like terraform for infrastructure development

access token from github Account with all permission required for it

run terraform file to create infrastructure on aws amplify

run build pipeline in aws amplify console

connect aws amplify with github account in case required.

connect ssl certificate to AWS amplify url if you want to host to a domain or sub domain.

3.install aws cli

in my case as i am trying on locally on windows laptop.

so open windows powershell and follow these steps:

Download and run the AWS CLI MSI installer for Windows (64-bit):

https://awscli.amazonaws.com/AWSCLIV2.msi

$ msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi

for confirmation of installation run

$ aws --version

it shows the version

$ aws configure

it will prompt for secret key and access key

region for hosting

and format text/json/none

configure it to automate your aws acoount

===note===

kindly create an iam user with roles for admin access for aws amplify.

4.terraform installation

Go to terraform.io/downloads.html

move to windows tab and click on amd64 section

the zip file will be downloaded to downloads folder then extract the folder to c:/programs/terraform

edit environment variable in path section of user variables

add new with address c:/programs/terraform

then if you run terraform --version on command prompt or powershell will show the terraform version 1.52

5. run terraform file

$ cd terraform (inside bs_assessment project folder)

$ terraform init (these will run main.tf file for configuration)
