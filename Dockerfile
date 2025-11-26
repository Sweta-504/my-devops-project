# Use Ubuntu as base image
FROM ubuntu:20.04

# Avoid interactive prompts during build
ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic Linux commands
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    vim \
    tree \
    htop \
    net-tools \
    iputils-ping \
    git \
    python3 \
    && rm -rf /var/lib/apt/lists/*

# Create working directory
WORKDIR /app

# Create some files to demonstrate Linux operations
RUN echo "Welcome to DevOps Learning!" > welcome.txt
RUN mkdir -p logs data config

# Create a script that shows system information
RUN echo '#!/bin/bash' > /usr/local/bin/show-info.sh
RUN echo 'echo "=== System Information ==="' >> /usr/local/bin/show-info.sh
RUN echo 'uname -a' >> /usr/local/bin/show-info.sh
RUN echo 'echo -e "\n=== Current Date ==="' >> /usr/local/bin/show-info.sh
RUN echo 'date' >> /usr/local/bin/show-info.sh
RUN echo 'echo -e "\n=== Files in /app ==="' >> /usr/local/bin/show-info.sh
RUN echo 'ls -la' >> /usr/local/bin/show-info.sh
RUN echo 'echo -e "\n=== Network Info ==="' >> /usr/local/bin/show-info.sh
RUN echo 'ip addr show | grep inet' >> /usr/local/bin/show-info.sh

# Make the script executable
RUN chmod +x /usr/local/bin/show-info.sh

# Set the script to run when container starts
CMD ["/usr/local/bin/show-info.sh"]
