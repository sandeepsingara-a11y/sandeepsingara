pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/USERNAME/my-docker-app.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('hello-world-app')
                }
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run --rm hello-world-app'
            }
        }
    }
}
