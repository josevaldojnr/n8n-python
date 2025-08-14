
# Use Node.js Alpine base image
FROM node:18-alpine

# Install Python and pip
RUN apk update && \
    apk add --no-cache python3 py3-pip && \
    pip3 install office365-rest-python-client

# Install n8n globally
RUN npm install -g n8n

# Create a working directory
WORKDIR /data

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
