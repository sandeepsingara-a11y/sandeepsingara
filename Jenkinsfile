pipeline {
    agent any
    stages {
        stage('Checkout') {
    steps {
        git(
            url: 'https://github.com/sandeepsingara-a11y/sandeepsingara.git',
            credentialsId: 'gitthub-pat',
            branch: 'main'
        )
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
