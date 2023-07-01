# Deploy a k8s cluster
Using commands provided on ./create_cluster.sh

# Create an RDS database
Create the database and table using the mysql.sql script

# Create an external service
Use localhost on the external service configuration if you are using a local database

# Test connection to external database with:
k run -it --rm --image=mysql:8.0.32 --restart=Never mysql-client -- mysql -h mysql-hostname -u user -ppassword

# Deploy k8s objects
Apply the k8s objects located on folder k8s

# Test api
get:
host:port/register

post:
    host:port/register

    body:
    {
        "name": "Test User",
        "email": "testuser@mail.com"
    }

# Check database
Connect to database to check the test user record

# Additional information:
https://www.eksworkshop.com/docs/automation/controlplanes/ack/configure-application

https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-rds

https://aws-controllers-k8s.github.io/community/docs/tutorials/rds-example/