# Use a small base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements (example)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY . .

# Run a simple app
CMD ["python", "app.py"]
