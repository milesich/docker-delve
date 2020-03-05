FROM golang:1.13-alpine AS builder
ENV CGO_ENABLED 0
ENV GO111MODULE on
RUN apk add --no-cache git && go get github.com/go-delve/delve/cmd/dlv@v1.3.2

FROM scratch
COPY --from=builder /go/bin/dlv /
