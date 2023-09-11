pipeline {
    agent any
    stages {
       // stage('Checkout') {
        //    steps {
          //      checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Nagarajuboddula/NEW_APP.git']]])
          //  }
        //}
        //stage ('terraform init') {
          //  steps {
           //     sh 'terraform init'
           // }
       // }
        //stage ('terraform plan') {
          //  steps {
          //      sh 'terraform plan'
         //   }
       // }
       // stage ('terraform apply') {
            //steps {
                //echo "Terraform action is --> ${action}"
               // sh "terraform apply --auto-approve"
           // }
        //}
    stage('S3 create bucket') {
        steps{
            sh "ansible-playbook s3-bucket.yml"
        }
       }
       stage ('terraform init') {
           steps {
              sh 'terraform init'
              sh 'ansible-playbook terraform.yml app_env=terraform'
         }
       }
        stage ('terraform plan') {
            steps {
                sh 'terraform plan'
                sh 'ansible-playbook terraform.yml app_env=terraform'
            }
        } 
    }
}
