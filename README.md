# docker-delve

Use it as a builder.

```
FROM milesich/delve AS builder
FROM alpine:3
  
COPY --from=builder /go/bin/dlv /
COPY main /
  
EXPOSE 8080 2345
  
CMD ["/dlv", "--listen=:2345", "--headless=true", "--api-version=2", "--accept-multiclient", "exec", "/main"]
```
