pipeline {
  agent any
    stages {
      stage ('Install Maven Java') {
        steps {
          script {
            checkout scm
            def MavenHome = tool 'MAVEN-3'
            def JavaHome  = tool 'JAVA_1.8' 
          }
        }
      }      
      stage ('User Approval') {
        steps {
          input ('Do you want to proceed?')
        } 
      }
    stage ('Build') {
      steps {
        script {
         sh 'mvn clean install'
        }  
      }
    }
  
}
