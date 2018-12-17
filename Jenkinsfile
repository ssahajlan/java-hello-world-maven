pipeline {
  agent any
    stages {
      stage ('Stage#1 : Installation') {
        steps {
          script {
        /* when installing on CENTOS */    
        /*  sh "yum -y install maven"
            sh "yum -y install unzip java-1.8.0-openjdk" */
            sh "sudo apt-get update -y"
            sh "sudo apt-get install openjdk-8-jdk -y"    
            sh "sudo apt-get install maven -y"
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
      stage ('Stage#3 : Build') {
        steps {
          script { 
            sh "mvn clean install"            
          }
        }
      }                  
      stage ('Stage#4 : Build & Push Docker Image') {
        steps {
          script { 
            sh "sudo docker rmi ssahajlan/myapp-1.0-jar-with-dependencies"
            sh "sudo docker images"
            
            sh "sudo docker build -t ssahajlan/myapp-1.0-jar-with-dependencies ." 
            sh "sudo docker images"
            
            sh "sudo docker login --env.username=DUser --env.password=DPassword "
            sh "sudo docker push ssahajlan/myapp-1.0-jar-with-dependencies"
          }
        }
      }                        
  }
}
