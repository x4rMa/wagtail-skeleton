FROM python:3.5.1-alpine
MAINTAINER goeast
ENV PYTHONUBUFFERED 1


RUN apk update
RUN apk add python3-dev postgresql-dev openssl openssl-dev libc-dev gcc g++ make libffi-dev
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
WORKDIR /code/src
