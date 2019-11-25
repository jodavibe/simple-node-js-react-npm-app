pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-v jenkins-data:/var/jenkins_home'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'RUN useradd -ms /bin/bash jenkins'
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