pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '''-u 0:0
-v jenkins-data:/var/jenkins_home'''
    }

  }
  stages {
    stage('Build') {
      steps {
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