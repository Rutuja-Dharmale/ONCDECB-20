// declarative pipeline
pipeline {
    agent any
    stages {
        stage('Stage 1') {
            steps {
                echo 'Hello world!'
            }
        }
        stage ('statge 2'){
            steps {
                echo 'bye guys'
            }
         }
    }   
}

//scripted pipeline

node {
    stage('build'){
        //
    }
    stage ('test'){
        //
    }
    stage('deploy'){
        //
    }
} 