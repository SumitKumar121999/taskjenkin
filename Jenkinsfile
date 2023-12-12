node {
	def WORKSPACE = "C:\\Users\\rohanaggarwal\\Desktop\\Assignments\\Bench\\DevOps"
	def dockerImageTag = "springboot-deploy${env.BUILD_NUMBER}"
	
	try{
		stage('Clone Repo'){
		git url: 'https://github.com/Rohan8590/dockerpipeline.git',
			credentialsId: 'githubaccount',
			branch: 'main'
		}
		
		stage('Build docker'){
			dockerImage = docker.build("springboot-deploy:${env.BUILD_NUMBER}")
		}
		stage('Deploy docker'){
			echo "Docker Image Tag Name: ${dockerImageTag}"
			sh "docker stop springboot-deploy || true && docker rm springboot-deploy || true"
			sh "docker run --name springboot-deploy -d -p 8086:8086 springboot-deploy:${env.BUILD+NUMBER}"
			
		}
	}catch(e){
		throw e
	}

}
