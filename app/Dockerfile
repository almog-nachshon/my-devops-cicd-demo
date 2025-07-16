# app/Dockerfile
FROM python:3.11-slim

# Set working dir
WORKDIR /app

# Accept VERSION as build-arg and expose in the image
ARG VERSION
ENV VERSION=${VERSION}

# Copy only your app files
COPY hello_world.py .

# Default command prints a message plus the version
CMD ["sh", "-c", "echo Hello from CI/CD! Version: $VERSION && python3 hello_world.py"]
