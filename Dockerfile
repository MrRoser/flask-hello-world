FROM ubuntu:22.04

# Create app directory
WORKDIR /flask-hello-world

# Install app dependencies
COPY src/requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
COPY src /app

EXPOSE 8080
CMD [ "python", "app.py" ]