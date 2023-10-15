pipeline{
    agent any
    parameters{
        string(name: 'DEPLOY_ENV', defaultValue: 'compile', description: 'doing compile')
        booleanParam(name: 'executetests', defaultValue: true, description: '')
        choice(name: 'APPVERSION', choices: ['one', 'two', 'three'], description: 'select the app version')
    }
    stages{
        stage('compile'){
            steps{
                script{
                    echo ("compile thr code")
                    echo ("deploying to env ${params.DEPLOY_ENV}")

                }
            }
        }
        stage('unittest'){
            when{
                expression{
                    params.executetests==true

                }
            }
            steps{
                script{
                    echo ("run the unittest")
                }
            }
        }
        stage('package'){
            steps{
                script{
                    echo ("packaging the code")
                    echo ("packaging the code ${params.APPVERSION}")
                }
            }
        }
    }
}