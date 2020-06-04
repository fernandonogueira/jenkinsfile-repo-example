podTemplate(containers: [
    containerTemplate(name: 'maven', image: 'maven:3.3.9-jdk-8-alpine', ttyEnabled: true, command: 'cat'),
    containerTemplate(name: 'golang', image: 'golang:1.8.0', ttyEnabled: true, command: 'cat')
  ]) {

    node(POD_LABEL) {
        stage('Get a Maven project') {
            git 'https://github.com/fernandonogueira/jenkinsfile-repo-example'
            container('maven') {
                stage('Build a Maven project') {
                    sh 'mvn --version'
                }
            }
        }

    }
}