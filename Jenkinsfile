pipeline{
    agent any
    tools {"nodejs","node"}
    stages{
        stage{
            stage('Build'){
                steps{
                    // sh 'git clone --filter=blob:none https://github.com/bradtraversy/mern-tutorial.git'
                    // sh 'cd mern_app/'
                    sh 'cd mern-tutorial/'
                    sh 'mv .envexample .env'
                    sh 'sed -i "s/development/production/g" .env'
                    sh 'sed -i "s|mongodb+srv:\/\/YOURMONGOURI|mongodb:\/\/localhost:27017|" .env'
                    sh 'npm install'
                    sh 'cd frontend'
                    sh 'npm install'
                    sh 'npm run build'
                    sh 'cd ..'
                    sh 'npm start'
                    sh '''
                    if (sh.status == 0) {
                        echo "Server started successfully!"
                        } 
                    else {
                        error "Server failed to start!"
                        }
                    '''
                }

            }

        }
    }
}