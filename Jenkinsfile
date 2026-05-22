pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                git branch: 'main',
                url: 'https://github.com/Arundhuti-Deka/docker-jenkins-app.git'
            }
        }

        stage('Build Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t docker-webapp .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker stop myapp || true'
                sh 'docker rm myapp || true'
                sh 'docker run -d -p 8082:8080 --name myapp docker-webapp'
            }
        }
    }
}
