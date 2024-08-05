pipeline {
    agent any

    environment {
        REGISTRY = "rohitkadevops"
        APP_NAME = "sample-microservice"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/RohitKaDevOps/sample-microservice.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("$REGISTRY/$APP_NAME:latest")
                }
            }
        }
        stage('Run Unit Tests') {
            steps {
                script {
                    docker.image("$REGISTRY/$APP_NAME:latest").inside {
                        sh 'python -m unittest discover -s app'
                    }
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('', 'docker-hub-credentials') {
                        docker.image("$REGISTRY/$APP_NAME:latest").push()
                    }
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                withCredentials([file(credentialsId: 'kubeconfig-credentials-id', variable: 'KUBECONFIG')]) {
                    sh 'kubectl apply -f k8s/deployment.yaml'
                }
            }
        }
    }
}