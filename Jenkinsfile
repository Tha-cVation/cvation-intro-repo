/* Requires the Docker Pipeline plugin */
pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'echo Building..'
                sh 'sleep 50'
            }
        }
        stage('test') {
            steps {
                sh 'echo Testing..'
            }
        }
        sh wait
        stage('deploy') {
            steps {
                sh 'echo Deploying..'
            }
        }
    }
}
