pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("my-app:latest")
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("my-app:latest").run('-d -p 8080:8080')
                }
            }
        }
    }
}
