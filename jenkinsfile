pipeline {
    agent any

    environment {
        GIT_REPO      = 'https://github.com/prathisha16/JTA.git'
        GIT_BRANCH    = 'main'
        TF_DIR        = 'terraform/createControlServer'
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: env.GIT_BRANCH,
                    credentialsId: 'github_connection',
                    url: env.GIT_REPO
            }
        }

        stage('Terraform Init') {
            steps {
                dir(env.TF_DIR) {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir(env.TF_DIR) {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir(env.TF_DIR) {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir(env.TF_DIR) {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
