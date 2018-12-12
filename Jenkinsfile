pipeline {
  agent any
    stages {
      stage ('Install Maven Java') {
        steps {
          script {
            checkout scm
            def mvnHome = tool 'MAVEN-3'
            def mvnHome = tool 'JAVA_1.8' 
          }
        }
      }      
    }
}
