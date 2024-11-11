# FROM golang:1.23-alpine AS builder

# RUN mkdir /app

# COPY . /app

# WORKDIR /app

# RUN CGO_ENABLED=0 GOOS=linux go build -o authApp ./cmd/api

# RUN chmod +x /app/authApp

# #build a tiny docker image
# FROM alpine:latest

# RUN mkdir /app

# COPY --from=builder /app/authApp /app

# CMD [ "/app/authApp" ]

FROM alpine:latest

RUN mkdir /app

COPY authApp /app

CMD [ "/app/authApp" ]