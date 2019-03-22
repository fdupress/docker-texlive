FROM alpine:latest

RUN adduser -h /home -D -u 1000 texlive
RUN apk add texlive-full biber
RUN apk update
RUN apk upgrade

WORKDIR /home

USER texlive
