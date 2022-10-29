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
                // 该步骤通常不应该在您的脚本中使用。请参考帮助查看详情。
                withDockerRegistry(credentialsId: 'dockerhub', url: 'https://hub.docker.com/repository/docker/algoyu/test-jenkins') {
                    sh "docker build -t algoyu/test:$BUILD_ID ."
                    sh "docker push algoyu/jenkins-test:$BUILD_ID"
                }
            }
        }
        stage('deploy image') {
            steps {
                echo '1'
                echo '1'
            }
        }
    }
}