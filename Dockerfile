FROM golang:1.15.2 AS builder
LABEL maintainer="Hong Cha"

ENV APPNAME go-ip
ENV BUILD_DIR /tmp/${APPNAME}
ENV GOBIN ${BUILD_DIR}/${APPNAME}

ARG GITHUB_TOKEN
ENV GITHUB_TOKEN ${GITHUB_TOKEN}
ENV GOPROXY https://goproxy.cn,https://goproxy.io,direct

COPY . ${BUILD_DIR}
WORKDIR ${BUILD_DIR}

RUN env && \
  make build && \
  cp -r ${GOBIN} /usr/bin/go-ip

# Stage2
FROM ubuntu:focal
ADD http://mirrors.cloud.tencent.com/repo/ubuntu20_sources.list /etc/apt/sources.list
ENV TZ "Asia/Shanghai"
RUN apt update && apt install -y tzdata curl && \
  ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ >/etc/timezone

COPY --from=builder /usr/bin/go-ip /bin/go-ip

ENTRYPOINT ["/bin/go-ip"]