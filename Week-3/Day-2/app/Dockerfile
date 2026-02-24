# Use a slim version of Python for a smaller, faster image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy dependency file first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .

# Inform Docker that the app listens on port 5000
EXPOSE 5000

# Start application
CMD ["python", "app.py"]
