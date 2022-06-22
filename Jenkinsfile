pipeline {
    agent any

     stages {
       
        
         stage('init') {
            steps {
                sh '''
                cd ./wrapper
                pwd
               terraform init
                 '''
            }
        }
        stage('validate'){
            steps {
                sh '''
                cd ./wrapper
                pwd
                terraform validate 
                '''
                
            }
        }
    
    stage(' plan') {
            steps {
                sh '''
                cd ./wrapper
                pwd
                terraform plan -var-file="terraform.tfvars"
                '''
                
            }
        }
 stage(' apply') {
     input {
                message "Do you want to  apply?"
            }
            
        steps {
                sh '''
                cd ./wrapper
                pwd
                terraform apply -auto-approve -var-file="terraform.tfvars"
                '''
                
            }
        }
    }
}
