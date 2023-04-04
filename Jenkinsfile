pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Install dependencies') {
      steps {
        sh 'bundle install'
      }
    }

    stage('Run tests') {
      steps {
        sh 'bundle exec cucumber --tags @All'
      }
    }
  }
}


