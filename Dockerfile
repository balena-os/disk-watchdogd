FROM ubuntu:24.04

# Install build dependencies and valgrind
RUN apt-get update && apt-get install -y \
    build-essential \
    libsystemd-dev \
    valgrind \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app
