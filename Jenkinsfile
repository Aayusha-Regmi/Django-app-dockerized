@Library ("shared") _
pipeline{
    agent {label "agent_first"}
    stages{
        stage("code"){
            steps{
                script{
                    clone("https://github.com/Aayusha-Regmi/Django-app-dockerized","main")
                }
            }
        }
        stage("build"){
            steps{
                script{
                    build("notesapp",".")
                }
            }
        }
        stage("push"){
            steps{
                echo "Pushing the image to docker hub..."
               script{
                   push("notesapp_id","notesapp","notesapp")
               }
                echo "Image pushed to docker registery successfully..."
            }
        }
        stage("deploy"){
            steps{
                sh "docker compose down"
                echo "Deploying app using docker run..."
                sh "docker compose up -d"
            }
        }
    }
}
