



node('master') {
  stage('Pull Code'){
    checkout([
      $class: 'GitSCM', branches: [[name: '*/master']],
      doGenerateSubmoduleConfigurations: false,
      extensions: [],
      submoduleCfg: [],
      userRemoteConfigs: [[credentialsId: 'mongoos2006-github-account-priv-key', url: 'git@github.com:mongoos2006/alexa.git']]
    ])
  }

  stage('Build'){
    dir('sample') {
      sh "chmod +x gradlew"
      sh "./gradlew fatJar"
    }
  }


  stage('Deploy'){
    dir('sample') {
      //step([$class: 'LambdaUploadBuildStep', lambdaUploadBuildStepVariables: [alias: '', artifactLocation: 'build/libs/samples-fat-1.0.jar', awsAccessKeyId: 'AKIAJ3IANHK5UZGHW57A', awsRegion: 'us-east-1', awsSecretKey: 'PbNvziHPnLw718CUMYBujkzBhgDvlR+pw2R3e12tVdRYmAgH+wDdynpVeLCIxgcsdh/k+bin9xGGolUX1aKVnQ==', deadLetterQueueArn: '', description: '', environmentConfiguration: [kmsArn: ''], functionName: 'Hello-World-Example-Skill', handler: 'helloworld.HelloWorldSpeechletRequestStreamHandler', memorySize: '256', role: 'arn:aws:iam::213661353360:role/lambda_basic_execution', runtime: '', securityGroups: '', subnets: '', timeout: '15', updateMode: 'full']])
    }
  }

}
