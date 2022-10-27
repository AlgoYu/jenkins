pipeline {
    agent any
    stages {
        stage('build source') {
            steps {
                sh './gradlew clean build'
            }
        }
        stage('build docker image') {
            steps {
                echo 'docker build'
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