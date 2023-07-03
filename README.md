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
it is recommended for security purposes to create an iam user and an add security credentials.
download csv file which includes secret key and acess key configure using aws configure command.

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

$ terraform plan (to check the processes running and all changes that will affect aws amplify)

$ terraform apply (it will prompt for yes to apply just write yes to add changes)

this will create a infrastructure aws amplify with the name Spacetourism app

6. build pipeline && connect github app for detecting next js framework automatically connect the repos.

first of all select any branch connected any in connect branch section of aws amplify console and disconnect it.

then connect main branch with github provider and provide iam role as added in iam user for permissions

aws amplify automatically detect the next js frame work then save it.

then run deploy the build main build section it will take few time.

it will cover three steps with provision,build and deploy.

if all ticked then successfully deployed otherwise need to check codes.

my amplify url is such https://main.d33mysnqlo4ijm.amplifyapp.com/

7.connect ssl certificate to AWS amplify url if you want to host to a domain or sub domain.

if you don't want users to show the amplify url can connect them using steps section in amplify console and there you can give access to root domain or can make sub domain access.

this will create a cname record automatically on route53.then after few minutes you can see your codes in desired subdomains. 

my subdomain dns hosted on is https://alpha.laxxonly.shop/






