pipeline { 
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage ("Checkout from GIT") {
            steps {
                git branch: 'main', credentialsId: '6f90e644-af7a-4c66-b5d8-56be31828cb6', url: 'https://github.com/PradeepRanjan18/tff.git'
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'terraform fmt'
                
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terraform plan") {
            steps {
                sh 'terraform plan'
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }

}