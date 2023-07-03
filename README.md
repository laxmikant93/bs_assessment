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
AWS account firstly
install AWS cli
install IaC tool like terraform for infrastructure development
access token from github Account with all permission required for it
run build pipeline in aws amplify console
connect aws amplify with github account in case required.
connect ssl certificate to AWS amplify url if you want to host to a domain or sub domain.

