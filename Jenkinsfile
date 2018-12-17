pipeline {
  agent any
    stages {
      stage ('Stage#1 : Installation') {
        steps {
          script {
        /* when installing on CENTOS */    
        /*  sh "yum -y install maven"
            sh "yum -y install unzip java-1.8.0-openjdk" */
            
            sh "sudo apt-get update && apt-get upgrade"
            sh "sudo apt-get install default-jdk"          
          }
        }
      }     /* 
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
      }  */                
  }
}
