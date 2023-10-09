pipeline{
    agent any
    stages{
        stage ('compile'){
        steps{
            script{
                echo "compile the code"
            }
        }
        }
        stage ('unittest'){
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
            }
        }
        }
    }
}