# Pipeline Diagram

[ Developer Pushes Code ]
        |
        v

[ Stage 1: Build ]    <-- Install dependencies (Flask, etc.) 
        |
        v

[ Stage 2: Test]      <-- Run scripts/run_tests.sh
        |
        v

[ Stage 3: Package ]  <-- Build Docker Image
        |
        v
        
[ Stage 4: Deploy]   <-- Push to AWS/Cloud