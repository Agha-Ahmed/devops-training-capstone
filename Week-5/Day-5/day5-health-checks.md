# ECS Health Check Configuration

## Objective

Configure a container health check so ECS can detect unhealthy containers.

## Implementation

A health check was added to the ECS task definition.

Health check command:

CMD-SHELL curl -f http://localhost:5000/health || exit 1

Configuration:

Interval: 30 seconds  
Timeout: 5 seconds  
Retries: 3  
Start period: 10 seconds  

## Observation

When the container became unhealthy, ECS marked it as:

Health status: Unhealthy

The container stopped with:

Exit code: 137

ECS automatically replaced the failed task with a new running task.

## Result

Health checks successfully allow ECS to detect and recover from unhealthy containers.