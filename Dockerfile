FROM golang:1.13-alpine
ENV CGO_ENABLED 0
RUN apk add --no-cache git && go get github.com/go-delve/delve/cmd/dlv
