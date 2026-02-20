# Sample Flask Application
This is a minimal Flask web application added for DevOps training.

## Setup Instructions

1. Create virtual environment:

   python3 -m venv venv
   source venv/bin/activate

2. Install dependencies:

   pip install -r requirements.txt

3. Run the application:

   python app.py


## Simulate the Test Execution   
## Normal run:
./scripts/run_tests.sh
## Force failure:
FORCE_FAIL=true ./scripts/run_tests.sh
