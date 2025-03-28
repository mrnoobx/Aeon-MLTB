FROM 5hojib/aeon:latest

WORKDIR /usr/src/app
RUN chmod -R 777 /usr/src/app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files
COPY . .

# Ensure start.sh is executable
RUN chmod +x start.sh

# Expose port 8080
EXPOSE 8080

# Run the bot
CMD ["bash", "start.sh"]
