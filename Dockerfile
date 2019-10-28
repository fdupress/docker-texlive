FROM alpine:latest

RUN apk add --no-cache texlive-full biber make
RUN apk upgrade --no-cache

RUN adduser -h /home -D -u 1000 texlive

WORKDIR /home
USER texlive
