pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Install Dependecies') {
      steps {
        sh 'bundle install'
      }
    }

    stage('Run tests') {
      steps {
        sh 'cucumber --tags "@all and not @fail"'
      }
    }
  }
}
