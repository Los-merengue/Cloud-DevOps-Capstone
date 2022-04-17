
# udacity-devops-eng-capstone
## Capstone - Project 5

[![CircleCI](https://circleci.com/gh/Los-merengue/Cloud-DevOps-Capstone/tree/main.svg?style=svg)](https://circleci.com/gh/Los-merengue/Cloud-DevOps-Capstone/tree/main)
This project is part of the Udacity Cloud-DevOps Program that is 
How is the project setup:

 * Tool used       : CircleCI
 * Deployment type : Rolling update

The deployment pipeline will include the following jobs:

1. lint-app          - Lint the Dockerfile
2. build-push-images - Build image locally and push it to DockerHub
3. Create-cluster & Add Service - An EKS Cluster would be created and the service to run the Cluster deployed alongside.
4. Create & run-deployment - Run the deployment with the updated image

To run the pipeline automatically just commit to the master branch of the repo.

https://app.circleci.com/pipelines/github/Los-merengue/Cloud-DevOps-Capstone?filter=all

https://github.com/Los-merengue/Cloud-DevOps-Capstone

