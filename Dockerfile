FROM golang:1.15.2 AS builder
LABEL maintainer="Hong Cha"

ENV APPNAME go-ip
ENV BUILD_DIR /tmp/${APPNAME}

ARG GITHUB_TOKEN
ENV GITHUB_TOKEN ${GITHUB_TOKEN}
ENV GOPROXY https://goproxy.cn,https://goproxy.io,direct

COPY . ${BUILD_DIR}
WORKDIR ${BUILD_DIR}

ADD ./go-ip ./go-ip

ENTRYPOINT ["./go-ip"]