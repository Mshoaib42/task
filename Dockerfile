# Use Python 3.9 or higher
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application
COPY app ./app

# Expose the port
EXPOSE 8000

# Start the application with specific options
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]