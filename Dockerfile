FROM golang:latest

WORKDIR /go/src/github.com/ieee0824/gin-blue-green-deploy-test

COPY . .

ENV GO111MODULE on

RUN set -e \
    && go build -o /bin/app ./app/main.go