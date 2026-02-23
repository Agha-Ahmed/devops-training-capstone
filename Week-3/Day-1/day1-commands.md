# Week 3 Day 1 – Task 1 Commands

## Step 1 – Run hello-world container
### Command: `docker run hello-world`
### Output from terminal:
latest: Pulling from library/hello-world
198f93fd5094: Pull complete 
95ce02e4a4f1: Download complete 
Digest: sha256:ef54e839ef541993b4e87f25e752f7cf4238fa55f017957c2eb44077083d7a6a
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.



## Step 2 – Run Python container interactively
### command: `docker run -it python:3.11-slim sh`
### Output from terminal:

3.11-slim: Pulling from library/python
54c61217622b: Download complete 
1453c5a0edea: Download complete 
93304c4769c2: Pull complete 
e9e50e44f49d: Pull complete 
05c5a2414322: Pull complete 
3ea009573b47: Pull complete 
Digest: sha256:0b23cfb7425d065008b778022a17b1551c82f8b4866ee5a7a200084b7e2eafbf
Status: Downloaded newer image for python:3.11-slim

## Step 3. Inside container:

1. Check Python version:
### command `python --version`
### Output from terminal:
Python 3.11.14

2. Run any quick Python commands to test:
### command: `python -c "print('Hello from Python container')"`
### Output from terminal:
Hello from Python container

3. Exit the container:
exit