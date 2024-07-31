FROM python:3

# Create app directory
WORKDIR /flask-hello-world

# Install app dependencies
COPY src/requirements.txt ./

RUN pip install -r requirements.txt

EXPOSE 8080
CMD [ "python", "app.py" ]
