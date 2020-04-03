FROM python:3.7.5-alpine

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.text
RUN pip install -r requirements.txt

COPY . .