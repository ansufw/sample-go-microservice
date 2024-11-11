FROM alpine:latest

RUN mkdir /app

COPY logServiceApp /app

CMD [ "/app/logServiceApp" ]