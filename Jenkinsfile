pipeline{
	agent { dockerfile true }
	stages {

		stage('Project Clean') {
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
		stage('Docker Image Build') {
		 steps {
			 script{
				 
			docker.build('demo')
			 }
			}
		}
		stage('Docker Image Push') {
		steps{
			 script{
		docker.withRegistry('https://423836738800.dkr.ecr.ap-south-1.amazonaws.com', 'ecr:ap-south-1:0495a501-e3a8-4acd-8119-4ea0e9c294eb') {
    		docker.image('demo').push('latest')
 			 }
			 }
		}
			
		}

	}
}
