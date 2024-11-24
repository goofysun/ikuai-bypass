FROM alpine:latest
 
WORKDIR /build
RUN ls -la
COPY ikuai-bypass .

RUN apk add --no-cache tzdata
ENV TZ=Asia/Shanghai

CMD ["./ikuai-bypass", "-c", "/etc/ikuai-bypass/config.yml"]
