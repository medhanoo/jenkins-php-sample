
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
              ssh  -l jdeployer unode "
                if [ ${USER} == jdeployer ]
                then
                  echo "matched after ssh"
                else
                  echo "this is what happened : ${USER}"              
                fi 
                
                "
            """
      }
    }

  stage('parallel runs') {
    parallel {
          
        stage('1') { sh 'echo a >> /tmp/data.txt' }
      
      }

  }


		}
	}


