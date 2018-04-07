
pipeline {

agent {
	label 'home'
}

environment {
MSG = "2"
}

  stages {
  
    stage('check ssh to unode'){
    
      steps
      
      {
      
        sh 'ssh -qt -l jdeployer unode "if [ -e /tmp ] ; then mkdir /tmp/1 ; fi"'
        echo '---------------------------------'
        echo "${MSG}"
        sh '((MSG++))'
        echo '---------------------------------'
        echo "${MSG}"
        echo '---------------------------------'
        echo "${MSG}"
      }
    

		}
	}

  }

