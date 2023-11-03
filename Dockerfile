FROM debian:bullseye-slim

RUN apt-get update && apt-get upgrade -y &&\
    apt-get install -y \
    build-essential \
    manpages-dev

WORKDIR /app

CMD ["bash"]
