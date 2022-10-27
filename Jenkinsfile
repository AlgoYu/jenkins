pipeline {
    agent {
        docker { image 'node:7-alpine' }
    }
    stages {
        stage('build source') {
            steps {
                sh './gradlew clean build'
            }
        }
        stage('build docker image') {
            steps {
                sh 'docker build -t algoyu/test .'
            }
        }
        stage('upload to image libraries') {
            steps {
                echo '1'
            }
        }
        stage('deploy image') {
            steps {
                echo '1'
            }
        }
    }
}