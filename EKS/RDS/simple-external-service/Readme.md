# Deploy a k8s cluster
using commands provided on ./create_cluster.sh

# create an RDS database 

# Create an external service

# Test connection to external database with:
k run -it --rm --image=mysql:8.0.32 --restart=Never mysql-client -- mysql -h <mysql-hostname> -u <user> -p<password>

# Deploy k8s objects

# test api
get:
<host>:<port>/register

post:
    <host>:<port>/register

    body:
    {
        "name": "Test User",
        "email": "testuser@mail.com"
    }

# Check database

# Additional information:
https://www.eksworkshop.com/docs/automation/controlplanes/ack/configure-application

https://aws-controllers-k8s.github.io/community/docs/community/services/#amazon-rds

https://aws-controllers-k8s.github.io/community/docs/tutorials/rds-example/