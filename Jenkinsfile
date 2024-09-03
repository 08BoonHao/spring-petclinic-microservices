pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/08BoonHao/spring-petclinic-microservices.git'
            }
        }
        stage('Build') {
            steps {
                powershell 'mvn clean install -DskipTests'
                echo 'Build completed successfully!'
            }
        }
        stage('Test') {
            steps {
                powershell 'mvn test'
                echo 'Tests executed successfully!'
            }
        }
        stage('Deploy') {
            steps {
                powershell '''
                .\\deploy.bat
                Write-Output "Deployment completed successfully!"
                '''
            }
        }
    }
    post {
        always {
            echo 'Cleaning up workspace'
            deleteDir() // Clean up the workspace after the build
        }
    }    
}

