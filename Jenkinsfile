pipeline {
  agent {
    docker {
      image 'node:6-alpine',
      args '-u 0:0',
      args '-p 3000:3000',
      args '-v jenkins-data:/var/jenkins_home',
    }
  }
  environment { HOME="." } 
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }

  }
}
