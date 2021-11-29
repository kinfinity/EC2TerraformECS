# EC2 Terraform ECS TOOLKIT

![DevOps Banner](./assets/images/ec2ecst.png)

Infrastructure provisioning has been segmented by the provisioning technologies. Each major Technology is put in a seperate folder to provide an easier means for navigating the entire repository.

## Introduction
 The objective of the project is to setup a Node.js server using ECS/ECR on AWS. Any push to the GitHub will start code deploy via code pipeline to the hosted
ECS. The ECS should be in an EC2 instance with a load balancer on top of it. 

The setup will include:
1. AWS account
2. Github (public)
3. ECR
4. ECS / Cluster
5. EC2 instance (ec2 micro - free tier)
6. Load balancer
7. Task group
8. Proper IAMs
9. Security groups
10. VPN and subnet
11. Codepipeline : Code source, build and deploy
12. Terraform / CloudFormation Templates for ECS Cluster, Task Definiton and ECS Service as well.

Share GitHub write access and create IAM (admin) for reviewer.