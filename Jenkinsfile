pipeline {
  agent any
  stages {
    stage('Image Building') {
      steps {
        sh 'docker build -t okiprasetia/test:${BUILD_NUMBER} .'
      }
    }
    stage('Pushing to docker hub') {
      steps {
        sh 'docker push okiprasetia/test:${BUILD_NUMBER}'
      }
    }
    stage('Pushing to Kubenernetes') {
      steps {
        sh 'kubectl set image deployment/test1 --namespace=test1 test1=okiprasetia/test:${BUILD_NUMBER}'
      }
    }
  }
}
