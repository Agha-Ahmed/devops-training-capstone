# CloudWatch Log Insights Query

## Log Group
/ecs/devops-training-task

## Query Used
fields @timestamp, @message
| filter @message like /error/
| sort @timestamp desc
| limit 20

## Time Range
Last 1 hour

## Result
No error messages were found in the ECS logs during the last hour.

This indicates the application is running normally and no failures occurred.
![alt text](image.png)