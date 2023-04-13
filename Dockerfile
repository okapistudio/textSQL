# Use the official Python image as the base image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY ./api/requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the port the app will run on
EXPOSE 8000

# Start the application
CMD ["./scripts/dev.sh"]
