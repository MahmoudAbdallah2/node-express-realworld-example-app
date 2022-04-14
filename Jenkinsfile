#!/usr/bin/env groovy
pipeline {
  agent any
  tools {nodejs "latest"}
  stages {
    stage('build') {
      steps {
        sh 'npm --version'
        #sh 'git log --reverse -1'
        sh 'npm install'
      }
    }
    stage('test') {
      steps {
        sh 'npm run test'
      }
    }
  }
}
