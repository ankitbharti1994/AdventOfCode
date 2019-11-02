pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building...'
        sh 'checkout scm'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing...'
      }
    }
  }
}