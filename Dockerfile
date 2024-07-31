FROM ubuntu:22.04

# Create app directory
WORKDIR /flask-hello-world

# Update package lists and install Python and pip
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    build-essential \
    libffi-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Install app dependencies
COPY src/requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
# COPY src /app

EXPOSE 8080
CMD [ "python", "app.py" ]