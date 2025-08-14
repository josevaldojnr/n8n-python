
# Use Node.js Alpine base image
FROM ubuntu:latest

# Install Python and pip
RUN apt-get update && \
    apt-get install python3 py3-pip && \
    pip3 install office365-rest-python-client

# Install n8n globally
RUN npm install -g n8n

# Create a working directory
WORKDIR /data


