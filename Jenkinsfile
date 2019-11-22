pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '''-u root:root
-v jenkins-data:/var/jenkins_home'''
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'sudo chown -r jenkins:jenkins /home/jenkins/jenkins/workspace'
        sh 'npm install'
      }
    }

    stage('Test') {
      steps {
        sh './jenkins/scripts/test.sh'
      }
    }

  }
  environment {
    CI = 'true'
  }
}