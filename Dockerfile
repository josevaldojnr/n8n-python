
# Use Node.js Alpine base image
FROM ubuntu:latest

# Install Python and pip
RUN apk update && \
    apk add --no-cache python3 py3-pip && \
    pip3 install office365-rest-python-client

# Install n8n globally
RUN npm install -g n8n

# Create a working directory
WORKDIR /data

