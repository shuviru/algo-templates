FROM debian:bookworm-slim

# Update and install dependencies
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    build-essential \
    manpages-dev \
    nodejs \
    npm \
    python3 \
    python3-pip \
    python3-venv 

# Create a virtual environment for Python and activate it
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Install atcoder-cli and online-judge-tools
RUN npm install -g atcoder-cli && \
    pip3 install online-judge-tools

# Set working directory
WORKDIR /app

# Default command
CMD ["bash"]
