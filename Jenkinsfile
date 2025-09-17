pipeline {
    agent any
    environment {
        IMAGE_NAME = 'nikhil0612/test_flask'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/CATEPX/Jenkins'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${IMAGE_NAME}:latest ."
            }
        }
        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId:'dockerhub-creds', usernameVariable:'DOCKER_USER', passwordVariable:'DOCKER_PASS')]) {
                    sh """
                        echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                        docker push ${IMAGE_NAME}:latest
                        docker logout
                    """
                }
            }
        }
    }
}
