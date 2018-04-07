
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
      
        sh 'ssh -qt unode "lsb_release -a"'
        echo '---------------------------------'
        echo '${env.MSG}'
        echo '---------------------------------'
      }
    

		}
	}

  }


