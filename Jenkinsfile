pipeline {
  agent any
  tools {
    nodejs 'NodeJS'
  }
  stages {
    stage('build') {
      steps {
        sh 'npm --version'
        sh 'git log --reverse -1'
        sh 'npm install'
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
