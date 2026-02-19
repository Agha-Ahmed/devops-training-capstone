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



Pipeline Stages:
Build: Install dependencies, compile code, set up environment.
Test: Run automated tests (unit, integration).
Package: Bundle artifacts (ZIP, Docker image, etc.).
Deploy: Send artifacts to staging/production.