pipeline{
    agent any
    parameters{
        string(name: 'DEPLOY_ENV', defaultValue: 'ENV', description: 'deploy to env')
        choice(name: 'APP_VERSION', choices: ['1', '2', '3'], description: 'Pick')
        booleanParam(name: 'executetests', defaultValue: true, description: 'run the tc')
        }
    stages{
        stage ('compile'){
        steps{
            script{
                echo "compile the code"
                echo "deploy to code to ${params.DEPLOY_ENV}"
            }
        }
        }
        stage ('unittest'){
            when{
                expression{
                    params.executetests==true
                }
            }
        steps{
            script{
                echo "test the code"
            }
        }
    }
        stage ('packaging'){
        steps{
            script{
                echo "packaging the code"
                echo "package the code ${params.APP_VERSION}"
            }
        }
        }
    }
}