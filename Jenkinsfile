pipeline {
  agent any
  stages {
    stage('Image Building') {
      steps {
        sh 'docker build -t okiprasetia/test-repo:${BUILD_NUMBER} .'
      }
    }
    stage('Pushing to docker hub') {
      steps {
        sh 'docker push okiprasetia/test-repo:${BUILD_NUMBER}'
      }
    }
    stage('Pushing to Kubenernetes') {
      steps {
        sh 'kubectl set image deployment/test --namespace=test test=okiprasetia/test-repo:${BUILD_NUMBER}'
      }
    }
  }
}
