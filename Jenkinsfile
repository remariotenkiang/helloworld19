pipeline {
    agent any 
    tools{
        maven 'M2_HOME'
    }
    stages {
      stage('Build'){
        steps {
          echo "Build step"
          sh 'mvn clean'
          sh 'mvn install'
          sh 'mvn package'
        }
      
      
      }
        stage('test '){
        steps {
          echo "test step"
          sh 'mvn test'
        }
      
      
      }
        stage('deploy'){
        steps {
            retry(3) {
    // some block
         sshPublisher(publishers: [sshPublisherDesc(configName: 'docker-host', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'cd /root; docker build -t ewrapp:v.2.3 . ; docker tag ewrapp:v.2.3 santos2020/ewrapp:v.2.3  ; docker push santos2020/ewrapp:v.2.3', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: 'webapp/target', sourceFiles: '**/*.war')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
        }
            
        }
      
      
      }
    
    }
    post {
        always {
        echo "Always display this message"
        }
        failure {
        echo "Job Failed"
        }
        success {
        echo "Successful run"
        }
        unstable {
        echo "job was unstable"
        }
    }
}

