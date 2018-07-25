#!groovy

pipeline {
    agent any

    stages {
        stage('ENVs') {
            steps {
                echo  'Print env...'
                sh 'env'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'scripts/test.sh'
            }
        }

        stage('Build') {
            steps {
                echo 'Building...'
                sh 'scripts/build.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh 'scripts/deploy.sh'
            }
        }
    }

    post {
        success {
            echo 'Succeeeded!'
        }
    }
}