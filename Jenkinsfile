
pipeline {

agent {
	label 'home'
}

environment {
MSG = "PiplelineVariable"
}

  stages {
  
    stage('check ssh to unode'){
    
      steps
      
      {
      
        sh 'ssh -qt -l jdeployer unode ${HOME}'
        echo '---------------------------------'
        echo "${env.MSG}"
        echo '---------------------------------'
      }
    

		}
	}

  }

