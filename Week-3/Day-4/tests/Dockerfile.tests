FROM python:3.11-slim

WORKDIR /tests

# install test deps
COPY requirements-tests.txt .
RUN pip install --no-cache-dir -r requirements-tests.txt

# copy test files
COPY test_app.py .

# run tests
CMD ["pytest", "-q"]