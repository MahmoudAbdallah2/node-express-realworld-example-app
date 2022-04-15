pipeline {
  agent any
  tools {
    nodejs 'NodeJS'
  }
  stages {
    stage('preflight') {
      steps {
        echo sh(returnStdout: true, script: 'env')
        sh 'node -v'
      }
    }
    stage('build') {
      steps {
        sh 'npm --version'
        sh 'git log --reverse -1'
        sh 'npm install'
      }
    }
    stage('test') {
      steps {
        sh 'npm run test'
      }
    }
    
    stage('Login') {
			steps {
				sh 'docker login -u mahmoudaboud -p Impossiplem011'
			}
		}
    
    stage('dockerBuild') {
			steps {
				sh 'docker build -t mahmoudaboud/nodeapp_test:latest .'
			}
		}
	  
	  stage('Push') {
			steps {
				sh 'docker push mahmoudaboud/nodeapp_test:latest'
			}
		}
}
}
