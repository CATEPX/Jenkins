pipeline {
    agent any
    environment {
        IMAGE_NAME = 'nikhil0612/test_flask'
    }
    stages {
        stage('Build Docker Image') {
            steps {
                sh "docker build -t $IMAGE_NAME:latest ."
            }
        }
        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: '16d5b5c0-2ca7-4e95-8ec3-6b399ee11c7e', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    sh """
                        echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                        docker push $IMAGE_NAME:latest
                        docker logout
                    """
                }
            }
        }
    }
}
