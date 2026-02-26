# ---------- Stage 1: builder ----------
FROM python:3.11-slim AS builder
WORKDIR /install

# Install dependencies into a portable directory
COPY requirements.txt .
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# ---------- Stage 2: runtime ----------
FROM python:3.11-slim AS runtime
WORKDIR /app

# Copy installed deps from builder stage
COPY --from=builder /install /usr/local

# Copy application code
COPY app.py .

# Inform Docker that the app listens on port 5000
EXPOSE 5000

CMD ["python", "app.py"]