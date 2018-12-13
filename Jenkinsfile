pipeline {
  agent any
    stages {
      stage ('Install Maven and Java') {
        steps {
          script {
            git 'https://github.com/ssahajlan/java-hello-world-maven.git'
            checkout scm
            def mvnhome = tool 'maven-3'
            def Javahome = tool 'JAVA-1.8'
          }
        }
      }      
      
    stage ('Build') {
      steps {
        script {
        /* sh "sudo yum install -y maven"*/
         sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean package"
         echo "in the build step"
        }  
      }
    }
  }
}
