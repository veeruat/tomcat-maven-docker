pipeline {
    agent any
    stages {
        stage('Build Application') {
            stage {
                sh 'mvn -f pom.xml clean package'
            }
            post {
                success{
                    echo "success...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }

        stage('Generate docker image'){
            steps{
                sh "pwd"
                sh "ls -a"
                sh "docker build . -t tomcatsamplewebapp:${env.BUILD_ID}"
            }
        }

    }
}