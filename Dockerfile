FROM golang:1.16-alpine AS builder
ENV CGO_ENABLED 0
ENV GO111MODULE on
RUN apk add --no-cache git && go get github.com/go-delve/delve/cmd/dlv@v1.6.0

FROM scratch
COPY --from=builder /go/bin/dlv /
