FROM python:3.9

# Create a working directory within the container
WORKDIR /app

# Copy requirements.txt (if dependencies exist)
COPY requirements.txt .

# Install dependencies if requirements.txt exists
RUN pip install -r requirements.txt

# Copy your application code
COPY . .

# Expose port 5000 (where Flask app runs by default)
EXPOSE 5000

# Run the Flask application (adjust command if needed)
CMD ["flask", "run", "--host=0.0.0.0:5000"]
