#!groovy?
node {
deleteDir()
stage('Descargar Fuentes') {
	checkout scm
}
stage('Terraform Inicializar') {	
	sh "terraform init"
}
stage('Terraform Plan') {	
	sh "terraform plan"
}
stage('Terraform Apply') {	
	sh "terraform apply --auto-approve"
}
}