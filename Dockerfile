FROM python:3.11-slim

# Install ffmpeg
RUN apt update && apt install -y ffmpeg

# Set working directory
WORKDIR /app

# Copy everything into container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port FastAPI will run on
EXPOSE 8000

# Command to run your app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
