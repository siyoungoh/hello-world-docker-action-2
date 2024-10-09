# Set the base image to use for subsequent instructions
FROM alpine:3.20

# Set the working directory inside the container
WORKDIR /usr/src

# Copy any source file(s) required for the action
COPY entrypoint.sh .

# Add execute permission to the entrypoint script
RUN chmod +x /usr/src/entrypoint.sh

# Ensure the /tmp directory exists for potential output files
RUN mkdir -p /tmp

# Configure the container to be run as an executable
ENTRYPOINT ["/usr/src/entrypoint.sh"]
