pipeline {
  agent {
    kubernetes {
      yaml """
      apiVersion: v1
      kind: Pod
      metadata:
        labels:
          jenkins: terraform
      spec:
        containers:
        - name: terraform
          image: hashicorp/terraform
          command:
          - cat
          tty: true
      """
    }
  }
  
  stages {

    // Run Terraform Init on each of the modules to ensure correcting linting
    stage('Terraform Init') {
      steps {
        container('terraform') {
          script {
              dir('dev') {
                sh 'terraform init'
              }
            }
          }
        }
    }

  }
}
