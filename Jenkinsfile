#!groovy

pipeline {
    agent none
    environment {
        VERSION = '1.0'
    }
    stages {
        stage ('Maven Install') {
            agent none {
            docker {
                    image 'maven:latest'
                }
            }
                
           
            steps {
                sh 'mvn clean install'
            }
        }
        stage ('Docker Build') {
            agent any
            steps {
                sh "docker build -t nmadesh20/spring-petclinic:${VERSION} ."
            }
        }
    }
}
