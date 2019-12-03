FROM golang:1.13-alpine AS builder
ENV CGO_ENABLED 0
RUN apk add --no-cache git && go get github.com/go-delve/delve/cmd/dlv

FROM scratch
COPY --from=builder /go/bin/dlv /
