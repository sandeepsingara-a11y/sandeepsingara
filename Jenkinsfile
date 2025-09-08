pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sandeepsingara-a11y/sandeepsingara.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("hello-world-app:latest", ".")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("hello-world-app:latest").run()
                }
            }
        }
    }
}
