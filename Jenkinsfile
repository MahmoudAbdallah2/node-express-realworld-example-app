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
	  stage('CreateContainer') {
		  	steps {
				sh 'docker run --name=mongo mongo'
				sh 'docker run -d --name nodeapp_test_container -p 3000:3000 -e MONGO_URL=mongodb://mongo:27017/dev mahmoudaboud/nodeapp_test:latest'
			}
	        }
	  
	  stage('Push') {
			steps {
				sh 'docker push mahmoudaboud/nodeapp_test:latest'
			}
		}
}
}
