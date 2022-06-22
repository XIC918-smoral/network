pipeline {
    agent any

     stages {
       
        
         stage('init') {
            steps {
                sh '''
                $(pwd)
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
                
                
                terraform plan
                '''
                
            }
        }
 stage(' apply') {
     input {
                message "Do you want to  apply?"
            }
            
        steps {
                sh '''
                
                
                terraform apply -auto-approve
                '''
                
            }
        }
    }
}
