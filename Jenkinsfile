pipeline {
    agent any
    stages {
        stage('build source') {
            steps {
                sh "./gradlew clean build -x test"
                echo ${BUILD_VERSION}
            }
        }
        stage('build docker image') {
            sh "docker build -t algoyu/test ."
        }
        stage('upload to image libraries') {
            sh 'docker push algoyu/test'
        }
        stage('deploy image') {
            steps {
                echo '1'
            }
        }
    }
}