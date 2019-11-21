pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-u 0:0 -p 3000:3000'
    }
  environment {
      npm_config_cache = "npm-cache"
      HOME = '/home/jenkins/jenkins'
    }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }

  }
}
