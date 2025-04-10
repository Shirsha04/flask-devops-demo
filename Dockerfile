# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the code
COPY app/ ./app/

# Run the app
CMD ["python", "app/app.py"]
