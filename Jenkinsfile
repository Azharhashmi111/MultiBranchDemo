pipeline {
    agent any

    environment {
        MAVEN_HOME = tool 'Maven 3' // This name must match the one in Jenkins tool config
        PATH = "${MAVEN_HOME}/bin:${env.PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'Dev', url: 'https://github.com/Azharhashmi111/MultiBranchDemo.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                sh '''
                    curl -T target/*.war \
                    --user jenkins:jenkinspass \
                    "http://34.123.227.154:8080/manager/text/deploy?path=/TomcatDeployment&update=true"
                '''
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Build or deployment failed.'
        }
    }
}
