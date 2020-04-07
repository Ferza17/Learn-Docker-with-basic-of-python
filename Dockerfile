FROM python:3.7.5-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.text
RUN pip install -r requirements.text

COPY . .

LABEL   maintainer="Fery Reza Aditya <feryreza.aditya@gmail.com>" \
        version="1.0"

CMD flask run --host=0.0.0.0 --port=5000
