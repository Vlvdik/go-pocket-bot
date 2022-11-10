FROM golang:1.15-alpine3.12 AS builder

COPY . /github.com/Vlvdik/go-pocket-bot/
WORKDIR /github.com/Vlvdik/go-pocket-bot/

RUN go mod download
RUN go build -o ./bin/foo cmd/bot/main.go

FROM alpine:latest

WORKDIR /root/

COPY --from=0 /github.com/Vlvdik/go-pocket-bot/bin/ .
COPY --from=0 /github.com/Vlvdik/go-pocket-bot/bin/ configs/

EXPOSE 80

CMD ["./bot"]
