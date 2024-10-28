# Use the official Python image as a base
FROM python:3.9-slim
#FROM python:3.9

# Set the working directory in the container
# This instruction tells Docker to set the working directory of the container to /fastapi . Any subsequent commands in the Dockerfile, such as COPY, RUN, or CMD, will be executed in this directory.
WORKDIR /fastapi

# Copy the dependencies file to the working directory
COPY ./requirements.txt /fastapi/requirements.txt

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY ./app /fastapi/app

#EXPOSE 8000

# Command to run the application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
