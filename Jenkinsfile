pipeline {
    agent { label 'docker' }

    stages {
        stage('Build and Push Docker Image') {
        steps {
            script {
            def tag = sh(returnStdout: true, script:'git tag --contains | head -1').trim()
            def date = sh(script: "date +%F", returnStdout: true).trim()
            def commitHash = sh(script: 'git rev-parse --short HEAD', returnStdout: true).trim()

            docker.withRegistry('https://harbor.siotgov.tech', 'jenkins_docsify') {
                def image = docker.build('harbor.siotgov.tech/docsify/docsify-web-application')
                image.push("latest")
                image.push("${date}_${env.BUILD_NUMBER}_${commitHash}")

                // if tagged on git, use as docker image tag too
                if (tag != "") {
                image.push("${tag}")
                }
            }
            }
        }
        }
    }

    post {
        failure {
            script {
                def commitHash = sh(script: 'git rev-parse --short HEAD', returnStdout: true).trim()
                def message = sh(returnStdout: true, script:'git log -1 --pretty=%B').trim()
                telegramSend(message: 'Docsify-web-application build failure\nCommit Hash: ' + commitHash + '\nChanges:\n' + message + '\n', chatId: -499610385)
            }
        }
        // TEST PORTAINER WEBHOOK
        success {
            echo "Docker build image and pushed succeeded"
            def response = sh(script: 'curl -X POST https://portainer.siot.local/api/webhooks/93da6a3e-153b-41d1-86e2-98aaaf77522e', returnStdout: true).trim()        
        }
    }

}
