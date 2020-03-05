# docker-delve

Use it to copy the delve binary to your own image.

```
FROM alpine:3

COPY --from=milesich/delve:1.4.0-1.14 /dlv /
COPY main /

EXPOSE 2345

CMD ["/dlv", "--listen=:2345", "--headless=true", "--api-version=2", "--accept-multiclient", "exec", "/main"]
```
