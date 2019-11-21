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
        sh 'npm install'
      }
    }

  }
}
