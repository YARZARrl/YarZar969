FROM alpine:latest
RUN apk add --no-cache curl
EXPOSE 80
CMD ["echo", "Server running"]
