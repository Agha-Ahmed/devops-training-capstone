# Capstone Architecture Diagram

## System Architecture

+--------------+
|  Developer   |
| (writes code)|
+------+-------+
       |
       v
+-------------+
|   GitHub    |
| Source Repo |
+------+------+
       |
       v
+--------------------+
| GitHub Actions CI  |
| Build & Test Code  |
+---------+----------+
          |
          v
+---------------------+
| Docker Build        |
| Create Container    |
+---------+-----------+
          |
          v
+---------------------+
| AWS ECR             |
| Container Registry  |
+---------+-----------+
          |
          v
+---------------------+
| AWS ECS (Fargate)   |
| Runs Application    |
+---------+-----------+
          |
          v
+---------------------+
| Application API     |
| /health /version    |
+---------+-----------+
          |
          v
+---------------------+
| AWS CloudWatch      |
| Logs + Metrics      |
+---------+-----------+
          |
          v
+---------------------+
| CloudWatch Alarms   |
| CPU / Memory Alerts |
+---------------------+