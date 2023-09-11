pipeline {
    agent any
    stages {
       // stage('tfff') {
       // steps{
       //     sh "terraform init -reconfigure"
       // }
       //}


    stage('S3 create bucket') {
        steps{
            sh "ansible-playbook s3-bucket.yml"
        }
       }


       stage ('terraform init and apply') {
           steps {
              sh 'terraform init'
              sh 'ansible-playbook terraform.yml'
         }
       }
    }
    post { 
        always { 
            cleanWs()
        }
    }
}
