FROM alpine:latest

RUN apk update \
 && apk --no-cache add tzdata \
 && cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
 && apk del tzdata

CMD ["crond", "-f"]
