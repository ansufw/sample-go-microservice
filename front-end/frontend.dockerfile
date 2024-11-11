FROM alpine:3.17

RUN mkdir /app

COPY frontEndApp /app

CMD [ "/app/frontEndApp" ]