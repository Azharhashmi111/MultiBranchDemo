pipeline {
    agent any

    tools {
        maven 'Maven3' // Configure this in Jenkins Global Tools
    }

    environment {
        IMAGE_NAME = 'addressbook-app-image'
    }

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'Dev', url: 'https://github.com/Azharhashmi111/MultiBranchDemo.git'
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${IMAGE_NAME}")
                }
            }
        }
    }
}
