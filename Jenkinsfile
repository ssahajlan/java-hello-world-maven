pipeline {
  agent any
    stages {
      stage ('Install Maven Java') {
        steps {
          script {
            checkout scm
            def mvhome = tool 'maven-3'
          }
        }
      }      
      
    stage ('Build') {
      steps {
        script {
         sh "sudo yum install -y maven"
         echo "in the build step"
        }  
      }
    }
  }
}
