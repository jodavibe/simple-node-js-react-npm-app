pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '''RUN groupadd -g 128 go \\
&& useradd -m -u 126 -g go go
USER go

-v jenkins-data:/var/jenkins_home'''
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