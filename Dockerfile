FROM ubuntu:22.04
RUN apt-get -y update && apt-get -y install gcc
WORKDIR /sqlite3
COPY sqlite3.c .
COPY sqlite3.h .
CMD gcc -shared -o sqlite3.so -fPIC sqlite3.c && ls
