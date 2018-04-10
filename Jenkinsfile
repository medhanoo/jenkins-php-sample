
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
      
        sh 'ssh -l jdeployer unode "echo asdf >> /tmp/DATA.txt"'
        echo '---------------------------------'
        echo "${MSG}"
        sh '((MSG++))'
        echo '---------------------------------'
        echo "${MSG}"
        echo '---------------------------------'
        echo "${MSG}"
        echo '---------------------------------'
        echo '---------------------------------'
        echo '---------------------------------'
        echo '---------------------------------'
      }

}


    stage('multiline try'){

   steps {
          sh """
              ssh  -l jdeployer unode "if [ -e /tmp/${env.MSG} ]
                then
                  mkdir ${MSG}
                fi"
            """
      }
    }
		}
	}


