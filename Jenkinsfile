pipeline {
    agent any
    stages {
        stage('build source') {
            steps {
                sh "./gradlew clean build -x test"
            }
        }
        stage('build docker image') {
            steps{
                sh "docker build -t algoyu/test ."
            }
        }
        stage('upload to image libraries') {
            steps{
                sh "docker tag algoyu/test algoyu/test-$BUILD_ID"
                sh "docker push algoyu/test-$BUILD_ID"
            }
        }
        stage('deploy image') {
            steps {
                echo '1'
            }
        }
    }
}