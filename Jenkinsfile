pipeline {
    agent any
    stages {
        stage('build source') {
            steps {
                sh "./gradlew clean build -x test"
            }
        }
        stage('build docker image') {
            sh "docker build -t algoyu/test-${BUILD_DATE_FORMATTED, "yyyy-MM-dd"} ."
        }
        stage('upload to image libraries') {
            sh 'docker push algoyu/test-${BUILD_DATE_FORMATTED, "yyyy-MM-dd"}'
        }
        stage('deploy image') {
            steps {
                echo '1'
            }
        }
    }
}