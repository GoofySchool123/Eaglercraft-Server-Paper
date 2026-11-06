# Use a modern, officially supported Java 8 environment
FROM eclipse-temurin:8-jre-alpine

# Set the working directory inside the cloud machine
WORKDIR /app

# Copy all the files from your repo into the machine
COPY . .

# Ensure the server run script has executing permissions
RUN chmod +x run.sh

# Force Fly.io to accept the environment license automatically
RUN echo "eula=true" > eula.txt

# Run the startup script when the machine boots
CMD ["./run.sh"]
