pipeline{
    agent any
    tools{
        jdk 'my_java'
        maven 'my_maven'
    }
    parameters{
        string(name: 'DEPLOY_ENV', defaultValue: 'Test', description: 'Env to deploy') 
        booleanParam(name: 'executeTests', defaultValue: true, description: 'Decide to run tc')
        choice(name: 'APP_VERSION', choices: ['1', '2', '3'], description: 'Pick')
    }
    stages{
        stage('compile'){
            steps{
                script{
                    echo('compile the code')
                    echo "Deploying to Env: ${params.DEPLOY_ENV}"
                    sh "mvn compile"
                }
            }

            }
        stage('unittest'){
            when{
                expression{
                    params.executeTests==true
                }
            }
            steps{
                script{
                    echo('run the unit test cases')
                    sh "mvn test"
                }
            }

            }
        stage('package'){
            steps{
                script{
                    echo('package')
                    echo"packing the code version ${params.APP_VERSION}"
                    sh "mvn package"
                }
            }

            }
        stage('deploy'){
            input{
                message "select the version to package"
                ok "version selected"
                parameters {
                            choice(name: 'NEW_VERSION', choices: ['4', '5', '6'], description: 'Pick')

                }
            }
            steps{
                script{
                    echo('package')
                    echo"packing the code version ${params.APP_VERSION}"
                }
            }

            }
        }
}
    
