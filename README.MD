# Jenkins CaaC examplee
Example project of Jenkins CaaC
## What is here
Sample usage oc Jenkins CaaC (Configuration as a Code). 
It creates only master with openjdk-10 (url is in jenkins.yaml, can be replaced copied from https://jdk.java.net/archive/), create sample multibranch pipeline job and credentials for job repo source.

### CaaC files description:
- config/jenkins.yaml - main configuration
- config/job.yaml - example job creation

### Docker files:
- Dockerfile - build Jenkins image with plugins from file "plugins.txt" and without any setup guide
- plugins.txt - list of plugins required
- docker-compose.yaml - demo usage of jenkins - mount config in dir, set env and add volume for $JENKINS_HOME

### Things to configure before usage:
- set env admin-password (check jenkins.yaml)
- set env git-creds-username (check jenkins.yaml)
- set env git-creds-password (check jenkins.yaml)
- replace text GIT_HTTP_REPO_URL using real url (check job.yaml)


This was inspired by https://github.com/ewelinawilkosz/praqma-jenkins-casc

## Usage

```
docker-compose up --build
```
