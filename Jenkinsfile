pipeline {
  agent any
    stages {
      stage ('Install Maven Java') {
        steps {
          script {
            checkout scm
            def MavenHome = tool 'maven-3'
          }
        }
      }      
      
    stage ('Build') {
      steps {
        script {
         sh "mvn clean install -U -Dmaven.test.skip = true"
        }  
      }
    }
  }
}
