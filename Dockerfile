FROM golang:latest

RUN mkdir /go/src/work
RUN go get -u github.com/labstack/echo/...
RUN go get bitbucket.org/liamstask/goose/cmd/goose

WORKDIR /go/src/work

ADD . /go/src/work
