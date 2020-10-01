FROM golang:1.15-alpine AS builder
ENV CGO_ENABLED 0
ENV GO111MODULE on
RUN apk add --no-cache git && go get github.com/go-delve/delve/cmd/dlv@v1.5.0

FROM scratch
COPY --from=builder /go/bin/dlv /
