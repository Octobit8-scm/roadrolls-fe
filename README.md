Road Rolls project is a CI/CD Pipeline implementation for MERN application. The objective is to automate the build, test, and deployment process, ensure code quality and security, manage infrastructure as code(IaC), and monitor the application's performance and health. Tools used for production are GitHub, AWS, Docker, Terraform, SonarQube, Jenkins, Jfrog Artifactory and target release date is 15 October 2024.
# Instructions to run roadrolls-fe
1. clone this repo to your loacl machine
2. install npm in your machine
3. run npm install
4. Install essential libraries
5. Install necessary npm package


# Update package.json dependencies
1. Visit the npm.org and search for this package and download or change the version.
2. You can find out all outdated dependencies
3. Using npm update command update all dependencies as needed
4. The npm-check-updates module will update the package.json file to the latest versions for all dependencies


# Infrastructure as code
1. Set up Terraform Cloud Workspaces for 'dev', 'qa' and 'prod' branch for ROADROLLS project. 
2. Set up Identity Provider in AWS and Configure IAM Role. 
3. Add Environment Variables to the Terraform Cloud and integrate with AWS. 
4. Add GPG keys, SSH keys, and make sure commits are verified. 
5. Create branches from JIRA and configure workspaces in Terraform Cloud.
6. Import updated files from the VS editor and RUN them in their respective branches. We're provisioning infrastructure for building VPC using Terraform Cloud.
7. Ensure JIRA, GitHub repositories, Visual Studio Code editor and AWS server are all in sync and integrated without any hiccups. 
7. Check AWS Management Console if the infrastructure is up and running.
[[ Link for reference : https://app.terraform.io/app/Octobit8-Private-Limited/workspaces ]]
   
# CI/CD Pipeline





# GitHub Settings
1. Add branch protection rule for all branches.   
2. Code and security analysis - Enable Depandabot Alerts.
3. Add GPG key for signing in. 
4. Add collaborators - Provide Role based access.
5. Add webhook for triggering events.
6. Add Email notifications.
# Containerization
1. Ensure Docker is installed and running on your machine. You can verify the installation by running:
docker --version
2. Repository is created on the dockerhub :- 
https://hub.docker.com/r/octoimages/road-rolls
3. docker tag your-image:tag your-dockerhub-username/your-repo-name:tag docker push your-dockerhub-username/your-repo-name:tag
4. Setting up a local Docker registry allows you to host your own Docker images locally.
5. Run a Local Registry Container:
docker run -d -p 5000:5000 --name local-registry registry:2
6. Tag and Push an Image to the Local Registry:
docker tag your-image:tag localhost:5000/your-repo-name:tag
docker push localhost:5000/your-repo-name:tag
7. Pull an Image from the Local Registry:
docker pull localhost:5000/your-repo-name:tag






# Code Coverage and analysis
1. Configure analysis method clear.
2. Provide a project token to be set as an environment variable.
3. Navigate to your job in Jenkins.
4. Verify Analysis Results in SonarCloud.
# Artifact Managment





