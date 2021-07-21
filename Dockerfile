FROM python:3.8-alpine

LABEL AUTHOR Redmund Nacario

ENV PYTHONUNBUFFERED 1

# Install python in the image
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user