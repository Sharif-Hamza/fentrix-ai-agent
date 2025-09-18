FROM python:3.11-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY agent.py .
COPY prompts.py .
COPY tools.py .

# Expose port for health checks (LiveKit agents use different ports)
EXPOSE 7860

# Health check - simplified for LiveKit agents
HEALTHCHECK --interval=60s --timeout=30s --start-period=30s --retries=3 \
  CMD curl -f http://localhost:7860/ || exit 1

# Start the AI agent in production mode
CMD ["python", "agent.py", "start"]
