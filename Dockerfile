FROM python:3.8-slim-buster
WORKDIR /app
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y git ffmpeg
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
ARG BOT_TOKEN=${BOT_TOKEN}
ARG APP_ID=${APP_ID}
ARG API_HASH=${API_HASH}
ARG SUDO_USERS=${SUDO_USERS}
ARG SUPPORT_CHAT_LINK=${SUPPORT_CHAT_LINK}
ARG DATABASE_URL=${DATABASE_URL}
CMD [ "python3", "-m" , "bot"]
