pipeline {
  agent any
    stages {
      stage ('Install Maven and Java') {
        steps {
          script {
            def mvnhome = tool 'maven-3'
            def Javahome = tool 'JAVA-1.8'
            git 'https://github.com/ssahajlan/java-hello-world-maven.git'
            checkout scm
          }
        }
      }      
      
    stage ('Build') {
      steps {
        script {
        /* sh "sudo yum install -y maven"*/
         echo "in the build step"
         sh   "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean package"         
        }  
      }
    }
  }
}
