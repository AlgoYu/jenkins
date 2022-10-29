pipeline {
    agent any
    stages {
        stage('build source') {
            steps {
                sh "./gradlew clean build -x test"
                echo "构建版本:$BUILD_ID"
                script {
                    sh(script: "echo $BUILD_MONTH",)
                }
            }
        }
        stage('build docker image') {
            steps{
                echo '1'
//                 sh "docker build -t algoyu/test ."
            }
        }
        stage('upload to image libraries') {
            steps{
                echo '1'
//                 sh 'docker push algoyu/test'
            }
        }
        stage('deploy image') {
            steps {
                echo '1'
            }
        }
    }
}