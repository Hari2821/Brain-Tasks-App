
## 🚀 Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/Vennilavan12/Brain-Tasks-App.git
cd Brain-Tasks-App

# Build & run locally
docker build -t brain-tasks-app .
docker run -p 3000:3000 brain-tasks-app
docker push hari2821/brain-tasks-app:latest

create two file under Brain-Tasks-App
cloudbuild.yaml
clouddeploy.yaml

Create a folder called k8s/ and add two files:
deployment.yaml
service.yaml
hpa.yaml

GCP setup

1. Enable Required APIs
gcloud services enable artifactregistry.googleapis.com \
    containerregistry.googleapis.com \
    cloudbuild.googleapis.com \
    container.googleapis.com

2. Create Artifact Registry Docker Repository
gcloud artifacts repositories create docker-repo \
  --repository-format=docker \
  --location=us-east4 \
  --description="Docker repository for Brain Tasks App"

This creates a Docker repo:
us-east4-docker.pkg.dev/<PROJECT_ID>/docker-repo


6. Cloud Build Trigger Setup

In Cloud Build → Triggers:
Source: GitHub
Branch: main
Build config file: cloudbuild.yaml
Substitutions:
_ZONE=us-east4-a
_CLUSTER_NAME=gke-cluster

Push to GitHub:

git commit -am "Add Artifact Registry deploy"
git push origin main
This will:
Build the Docker image
Push to Artifact Registry
Update GKE deployment image



Error: 
While building if you face this isse 

Your build failed to run: if 'build.service_account' is specified, the build must either (a) specify 'build.logs_bucket', (b) use the REGIONAL_USER_OWNED_BUCKET build.options.default logs bucket behavior option, or (c) use either CLOUD_LOGGING_ONLY / NONE logging options: invalid argument
view the "Specify a build.logs_bucket" file
