pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-u root:sudo -p 3000:3000'
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
