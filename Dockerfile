FROM python:3

# Create app directory
WORKDIR /flask-hello-world

# Install app dependencies
COPY src/requirements.txt ./
COPY src/app.py ./

RUN pip install -r requirements.txt

EXPOSE 5000
CMD [ "python","-m","flask","run","--host=0.0.0.0" ]
