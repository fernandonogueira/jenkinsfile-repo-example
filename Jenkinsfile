podTemplate(containers: [
    containerTemplate(name: 'maven', image: 'maven:3.3.9-jdk-8-alpine', ttyEnabled: true, command: 'cat'),
    containerTemplate(name: 'golang', image: 'golang:1.8.0', ttyEnabled: true, command: 'cat'),
    containerTemplate(image: 'docker', name: 'docker', command: 'cat', ttyEnabled: true)
  ],
    volumes: [hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock')]
  ) {

    node(POD_LABEL) {
        stage('Get a Maven project') {
            git 'https://github.com/fernandonogueira/jenkinsfile-repo-example'
            container('maven') {
                stage('Build a Maven project') {
                    sh 'mvn --version'
                }
            }
            container('docker') {
                stage('Topper') {
                    sh """
                        docker build -t muito-legal .
                    """
                }
            }
        }

    }
}