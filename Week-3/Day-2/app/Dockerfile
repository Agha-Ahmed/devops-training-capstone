# Use a slim version of Python for a smaller, faster image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy dependency file first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install curl (required for HEALTHCHECK)
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*


# Copy application code
COPY app.py .

# Inform Docker that the app listens on port 5000
EXPOSE 5000

# Healthcheck instruction (wait 20s before first check)
HEALTHCHECK --interval=30s --timeout=5s --start-period=20s --retries=3 \
    CMD curl --fail http://localhost:5000/health || exit 1

# Start application
CMD ["python", "app.py"]
