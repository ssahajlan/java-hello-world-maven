pipeline {
  agent any
    stages {
      stage ('Stage#1 : Installation') {
        steps {
          script {
            sh "yum -y install maven"
            sh "yum -y install unzip java-1.8.0-openjdk"
            /*    def mvnHome = tool 'maven-3'
            def Javahome = tool 'JAVA-1.8'*/
          }
        }
      }      
      stage ('Stage#2 : SCM Checkout') {
        steps {
          script {
            git 'https://github.com/ssahajlan/java-hello-world-maven.git'
            checkout scm
          }
        }
      }  
      stage ('Stage#2 : JAR Build') {
        steps {
          script {
            sh "mvn clean install"            
          }
        }
      }                  
  }
}
