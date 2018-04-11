
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
          
        stage('1') {  steps { sh ' ssh  -l jdeployer unode "echo a >> /tmp/data.txt"'} }
        stage('2') {  steps { sh ' ssh  -l jdeployer unode "echo b >> /tmp/data.txt"'} }
        stage('3') {  steps { sh ' ssh  -l jdeployer unode "echo c >> /tmp/data.txt"'} }
        stage('4') {  steps { sh ' ssh  -l jdeployer unode "echo d >> /tmp/data.txt"'} }
        stage('5') {  steps { sh ' ssh  -l jdeployer unode "echo e >> /tmp/data.txt"'} }
        stage('6') {  steps { sh ' ssh  -l jdeployer unode "echo f >> /tmp/data.txt"'} }
        stage('7') {  steps { sh ' ssh  -l jdeployer unode "echo g >> /tmp/data.txt"'} }
        stage('8') {  steps { sh ' ssh  -l jdeployer unode "echo h >> /tmp/data.txt"'} }
        stage('9') {  steps { sh ' ssh  -l jdeployer unode "echo j >> /tmp/data.txt"'} }
        stage('10') {  steps { sh ' ssh  -l jdeployer unode "echo k >> /tmp/data.txt"'} }
        stage('11') {  steps { sh ' ssh  -l jdeployer unode "echo l >> /tmp/data.txt"'} }
      
      }

  }


  stage ('Deploying PHP application') {

    steps {
        sh 'scp -r src/* jdeployer@unode:/opt/code/'
        sh 'scp deploy.sh jdeployer@unode:/var/tmp/'
        sh 'ssh  -l jdeployer unode "chmod +x /var/tmp/deploy.sh"'
    }
  } 
 stage ('executing deploy.sh') {

    steps {
        sh '/var/tmp/deploy.sh'
    }
  }

		}
	}

