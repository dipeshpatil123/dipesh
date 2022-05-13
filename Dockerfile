FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
RUN pip3 install -U pip
RUN pip3 install -U pyrogram
COPY start /start
CMD ["/bin/bash", "/start"]
