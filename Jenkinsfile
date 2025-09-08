pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO.git'
            }
        }

        stage('Build Hello Docker') {
            steps {
                sh '''
                  echo "FROM alpine:latest\nCMD echo Hello World from Jenkins" > Dockerfile
                  docker build -t hello-world:latest .
                '''
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run --rm hello-world:latest'
            }
        }
    }
}
