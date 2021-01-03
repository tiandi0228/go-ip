.PHONY: all build clean test

PROJECT_NAME=$(shell basename "$(PWD)")

VERSION=0.0.1
BIN=go-ip
DIR_SRC=./
BUILD_TIME=$(shell date +%Y%m%d)

# Go related variables.
GOFILES=$(wildcard *.go)
GOPROXY="https://mirrors.aliyun.com/goproxy,direct"
GO_ENV=CGO_ENABLED=0 GOPROXY=$(GOPROXY)
GO_FLAGS=-ldflags="-X main.version=$(VERSION) -X 'main.buildTime=$(BUILD_TIME)' -extldflags -static"
GO=$(GO_ENV) $(shell which go)
GOROOT=$(shell `which go` env GOROOT)
GOPATH=$(shell `which go` env GOPATH)

build: $(DIR_SRC)main.go
	$(GO) build $(GO_FLAGS) -o $(BIN) $(DIR_SRC)

docker_image: clean
	@docker build -t $(PROJECT_NAME):$(VERSION) --build-arg GITHUB_TOKEN=${GITHUB_TOKEN} -f ./Dockerfile .

install: build
	@$(GO) install $(GO_FLAGS) $(DIR_SRC)

test:
	@$(GO) test ./test

# clean all build result
clean:
	@$(GO) clean ./...
	@rm -f $(BIN)