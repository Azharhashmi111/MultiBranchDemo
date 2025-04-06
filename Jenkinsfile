pipeline{
agent any
tools{
    tool name: '', type: 'maven'
}
  stages{
    stage('clone repo')
    {
      steps{
       git branch: 'Dev', url: 'https://github.com/Azharhashmi111/MultiBranchDemo.git'
      }
    }
     stage('Build Code')
    {
      steps{
       sh 'mvn package'
      }
    }
     stage('Deploy Code')
    {
      steps{
       deploy adapters: [tomcat9(credentialsId: 'tomcatcredentials', path: '', url: 'http://34.123.227.154:8080/')], contextPath: null, war: '**/*.war'
      }
    }
  }
}
