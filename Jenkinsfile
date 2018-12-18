pipeline {
  agent any
    stages {
      stage ('Stage#1 : Java & Mvn Install') {
        steps {
          script {
        /* when installing on CENTOS */    
        /*  sh "yum -y install maven"
            sh "yum -y install unzip java-1.8.0-openjdk" */
            sh "sudo apt-get update -y"
            sh "sudo apt-get install openjdk-8-jdk -y"    
            sh "sudo apt-get install maven -y"
            sh "sudo docker -v"
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
      stage ('Stage#3 : Build JAR') {
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
            
            sh "sudo docker login -u=$env.DUser -p=$env.DPassword "
            sh "sudo docker push ssahajlan/myapp-1.0-jar-with-dependencies"
            
            sh "sudo docker run -p 3010:8080 -d ssahajlan/myapp-1.0-jar-with-dependencies"
          }
        }
      }
      stage ('Stage#5 : Install K8s & script YAML') {
        steps {
          script { 
            sh "curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.7/bin/linux/amd64/kubectl"
            sh "chmod +x ./kubectl"
            sh "sudo mv ./kubectl /usr/local/bin/kubectl"
            sh "kubectl version"
            
            sh "curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.23.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/"
            sh "minikube start --vm-driver=none"
            sh "kubectl run hello-minikube --image=gcr.io/google_containers_echoserver:1.4 –port=8080"
            sh "kubectl expose deployment hello-minikube –-type=NodePort"
            sh "kubectl get pod"
          }
        }
      }      
  }
}
