pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f tomcat-maven-docker/pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Create Tomcat Docker Image'){
            steps {
                sh "pwd"
                sh "ls -a"
                sh "docker build ./tomcat-maven-docker -t tomcatsamplewebapp:${env.BUILD_ID}"
            }
        }

    }
}