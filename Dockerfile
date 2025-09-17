# Use official Python image
FROM python:3.9-slim

# Set working directory inside container
WORKDIR /app



# Copy the rest of the application code
COPY . .

# Expose Flask port
EXPOSE 5000

# Run Flask app
CMD ["python", "app.py"]
