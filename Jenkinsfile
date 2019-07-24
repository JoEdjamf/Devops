pipeline {
    agent

    stages {
        stage("Preparation") {
            steps {
                sh "apt-get update"
                sh "apt-get install wget -y"
                sh "wget https://phar.phpunit.de/phpunit-6.5.phar"
                sh "chmod ugo+x phpunit-6.5.phar"
                sh "mv phpunit-6.5.phar /usr/local/bin/phpunit"

                sh "php -v"
                sh "phpunit --version"
            }
        }

        stage("Test") {
            steps {
                sh "phpunit client/test.php"
            }
        }

        stage("Construction") {
            steps {
                sh "docker-compose build"
            }
        }

        stage("Deploiement") {
            steps {
                sh "docker-compose down"
                sh "docker-compose up -d"
            }
        }
    }
}