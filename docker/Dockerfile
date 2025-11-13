 Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port on which the Flask application will run
EXPOSE 8000

# Define the command to run the Flask application
# Using Gunicorn for production deployments is recommended
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
~                                                                                                                    
~                                                                                                                    
~                                             
