  
pipeline{
    agent any
    tools{
        maven 'maven 3.8'
        jdk 'java 8'
        dockerTool 'docker'
    }  
stages{
        stage('clone'){
            steps{
                git credentialsId: 'github', url: 'https://github.com/Salma-Sulthana999/Docker.git'
            }
        }
        stage('build'){
            steps{
                script{
                    sh '''
                    mvn clean package -Dmaven.test.skip=true
                    ls -ltr target/
                    '''
                }
            }
        }
        stage('docker build'){
            steps{
                script{
                  sh '''
                  sudo  docker build -t salma09/mywebapp:${BUILD_NUMBER} .
                  sudo docker push salma09/mywebapp:${BUILD_NUMBER}
                  sudo docker logout
                  '''
               }
          }
       }
    }
}
