pipeline{
    agent none
    tools{
        jdk 'my_java'
        maven 'my_maven'
    }
    parameters{
        string(name: 'DEPLOY_ENV', defaultValue: 'compile', description: 'doing compile')
        booleanParam(name: 'executetests', defaultValue: true, description: '')
        choice(name: 'APPVERSION', choices: ['one', 'two', 'three'], description: 'select the app version')
    }
    stages{
        stage('compile'){
            agent any
            steps{
                script{
                    echo ("compile thr code")
                    echo ("deploying to env ${params.DEPLOY_ENV}")
                    sh 'mvn compile'

                }
            }
        }
        stage('unittest'){
            agent any
            when{
                expression{
                    params.executetests==true

                }
            }
            steps{
                script{
                    echo ("run the unittest")
                    sh 'mvn test'
                }
            }
        }
        stage('deploy'){
            agent { label 'linux_slave' }
            input{
                message "select the version of package"
                ok "version selected"
                submitter "reddy"
                parameters{
                            choice(name: 'APPVERSION', choices: ['4', '5', '6'], description: 'select the app version')


                }
              
            }
            steps{
                script{
                    echo ("packaging the code")
                    echo ("packaging the code ${params.APPVERSION}")
                    sh 'mvn package'
                }
            }
        }
    }
        
}
