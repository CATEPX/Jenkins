# Use official Python image
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements (if you have one), otherwise skip
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose Flask port
EXPOSE 5000

# Run Flask app
CMD ["python", "app.py"]
