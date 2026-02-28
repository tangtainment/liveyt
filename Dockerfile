FROM ubuntu:22.04

RUN apt update && apt install -y ffmpeg

WORKDIR /app
COPY . .

CMD ["bash", "start.sh"]
