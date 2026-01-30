🧠 Brain Tasks App – AWS CI/CD Deployment on EKS
<img width="824" height="382" alt="Brain_Task_images" src="https://github.com/user-attachments/assets/95864dc7-2c51-45ee-8b01-8df7a6250996" />
🚀 Overview

This project demonstrates a complete AWS DevOps pipeline to deploy the Brain Tasks App using Docker, ECR, CodeBuild, CodeDeploy, CodePipeline, and EKS, with CloudWatch monitoring for build, deploy, and application logs.

🧩 Architecture

GitHub → CodePipeline → CodeBuild → ECR → CodeDeploy → EKS → CloudWatch

Source (GitHub) – Application code repository

Build (CodeBuild) – Builds Docker image and pushes to ECR

Deploy (CodeDeploy) – Deploys to Kubernetes (EKS) using manifests

EKS Cluster – Hosts the running app (port 3000)

CloudWatch – Monitors build, deploy, and app logs in real time

⚙️ Key Steps
1️⃣ Application

Clone: https://github.com/Vennilavan12/Brain-Tasks-App.git

Run locally: npm run build && npx serve -s dist -l 3000

2️⃣ Docker

Create Dockerfile, build image, test locally

Push image to AWS ECR

3️⃣ EKS (Kubernetes)

Create EKS cluster

Deploy app using deployment.yaml and service.yaml

Expose via LoadBalancer on port 3000

4️⃣ CodeBuild

Automate build and push using buildspec.yml

5️⃣ CodeDeploy

Automate deployment to EKS using appspec.yml

6️⃣ CodePipeline

Integrate all stages:

Source: GitHub

Build: CodeBuild

Deploy: CodeDeploy

7️⃣ Monitoring

Use CloudWatch Logs and a dashboard (BrainTasks-Monitoring) to track:

Build logs → /aws/codebuild/brain-task-build

Deploy logs → /aws/codebuild/check-code-deploy

Application logs → /aws/eks/brain-tasks-cluster/cluster

Log activity trends (line graph)

🧠 Deliverables

✅ GitHub Repository – Full source and configuration

✅ CI/CD Pipeline – Fully automated build → deploy workflow

✅ EKS Deployment – Application accessible via LoadBalancer

✅ CloudWatch Dashboard – Real-time monitoring for builds, deploys, and app

✅ README Documentation – Setup steps and screenshots

📸 Final Output

Application deployed successfully on AWS EKS

Accessible at:
http://<LoadBalancer-DNS>:3000

Monitored via CloudWatch Dashboard: BrainTasks-Monitoring
