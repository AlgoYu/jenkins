pipeline {
    agent any
    stages {
        stage('build source') {
            steps {
                sh "./gradlew clean build -x test"
                echo "构建版本:$BUILD_ID"
            }
        }
        stage('build docker image') {
            steps{
                sh "docker build -t algoyu/test ."
            }
        }
        stage('upload to image libraries') {
            steps{
                sh 'docker push algoyu/test'
            }
        }
        stage('deploy image') {
            steps {
                echo '1'
            }
        }
    }
}