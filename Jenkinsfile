pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args ' -p 3000:3000'
    }
    environment {
        HOME = '.'
    }
  stages {
    stage('Build') {
      steps {
        webappImage.inside("-u root") {
          sh 'npm install'
        }
      }
    }

  }
}
