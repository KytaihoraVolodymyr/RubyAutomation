pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Run tests') {
      steps {
        sh 'cucumber --tags "@all and not @fail"'
      }
    }
  }
}
