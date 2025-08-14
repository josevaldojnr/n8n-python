# Use Python base image with Debian
FROM python:3.12-slim-bookworm

# Install Node.js (required for n8n)
RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g n8n && \
    pip install office365-rest-python-client && \
    apt-get clean

# Create working directory
WORKDIR /data

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
