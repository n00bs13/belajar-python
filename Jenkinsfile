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
	sh 'docker login -u okiprasetia -p Desersi123#'
        sh 'docker push okiprasetia/test:${BUILD_NUMBER}'
      }
    }
    stage('Pushing to Kubenernetes') {
      steps {
        sh 'kubectl set image deployment/test --namespace=test test=okiprasetia/test:${BUILD_NUMBER}'
      }
    }
  }
}
