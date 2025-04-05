pipeline {
  agent any

  environment {
    CURRENT_BRANCH = "${env.BRANCH_NAME}"
  }

  stages {
    stage('Checkout') {
      steps {
        echo "Checking out code from branch: ${env.BRANCH_NAME}"
        // git checkout or scm step can go here
      }
    }

    stage('Compile') {
      when {
        anyOf {
          branch 'Dev'
          branch 'feature-*'
        }
      }
      steps {
        echo "Compiling application..."
      }
    }

    stage('Test') {
      when {
        not {
          branch 'prod'
        }
      }
      steps {
        echo "Running tests..."
      }
    }

    stage('Deploy') {
      steps {
        echo "Deploying from branch: ${env.BRANCH_NAME}"
      }
    }
  }
}
