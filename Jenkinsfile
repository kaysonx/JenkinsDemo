pipeline {
	agent any


	stages {
		stage('Test') {
			steps {
				echo 'Test...'
				sh './gradlew clean test'
			}
		}

		stage('Build') {
			steps {
				echo 'Build...'
				sh './gradlew clean build -x test'
			}
		}

		stage('Deploy') {
			steps {
				sh 'scripts/deploy.sh'
			}
		}
	}

	post {
		success {
			echo 'pipeline success...'
		}
	}
}