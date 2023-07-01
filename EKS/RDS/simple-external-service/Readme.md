# Deploy a k8s cluster
Using commands provided on ./create_cluster.sh

# Create a database
- Create a local database or a external database like RDS
- Create the database objects using the mysql.sql script

# Create an external service on k8s
- Use localhost on the external service configuration if you are using a local database. 
- Use the dns e if you are using an external database like RDS

# Test connection to external database from k8s using the proper dns, user and password:
k run -it --rm --image=mysql:8.0.32 --restart=Never mysql-client -- mysql -h mysql-hostname -u user -ppassword

# Deploy k8s objects
Apply the k8s objects located on folder k8s

# Test api
## get:
Using a browser on:
host:port/register

## post:
Make a post call using this data:
host:port/register

body:
{
    "name": "Test User",
    "email": "testuser@mail.com"
}

# Check database
Connect to database to check the test user record was created

# Additional information:
- https://www.eksworkshop.com/docs/automation/controlplanes/ack/configure-application
- https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-rds
- https://aws-controllers-k8s.github.io/community/docs/tutorials/rds-example/