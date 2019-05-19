pipeline {
    environment {
        registry = "dheerajdac/ubuntu"
        registryCredential = 'dockerhub'
        dockerImage = ''
     }

    agent any

        stages {
            stage('Building Image') {
                steps{
                    script {
                        dockerImage = docker.build(registry + ":$BUILD_NUMBER", "./jenkinsSlave")
                    }
                 }
            }
            stage('Deploy Image') {
                steps{
                    script {
                        docker.withRegistry( '', registryCredential ) {
                            dockerImage.push()
                        }
                    }
                }
            }
            stage('Remove Unused docker image') {
                steps{
                    sh "docker rmi $registry:$BUILD_NUMBER"
                }
            }
        }
}
