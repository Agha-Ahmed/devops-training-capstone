# ECS Logs in CloudWatch

## Log Group

The ECS service logs are visible in the following CloudWatch log group:

/ecs/devops-training-task

## Log Stream

Example log stream:

ecs/devops-training-container

## Example Logs

Serving Flask app 'app'  
Debug mode: off  
Running on http://127.0.0.1:5000  
Running on http://172.31.9.243:5000  

## Observation

The application container logs are successfully being sent from Amazon ECS to CloudWatch Logs.

This allows engineers to monitor application behavior and debug issues directly from CloudWatch.