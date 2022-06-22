pipeline {
    agent any

     stages {
       
        
         stage('init') {
            steps {
                sh '''
               terraform init
                 '''
            }
        }
        stage('validate'){
            steps {
                sh '''
                terraform validate 
                '''
                
            }
        }
    
    stage(' plan') {
            steps {
                sh '''
                
                
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
                
                
                terraform apply -auto-approve -var-file="terraform.tfvars"
                '''
                
            }
        }
    }
}
