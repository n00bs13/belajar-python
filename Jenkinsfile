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
	sh 'kubectl config set-context --current --namespace=testing-kds'
        sh 'kubectl set image deployment/test1 --namespace=testing-kds test1=okiprasetia/test:${BUILD_NUMBER}'
      }
    }
  }
}
