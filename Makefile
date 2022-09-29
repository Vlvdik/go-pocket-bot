.PHONY:
.SILENT:

build:
	go build -o ./.bin/bot cmd/bot/main.go

run: build
	./.bin/bot

build-image:
	docker build -t pocket-bot:v0.1 .

start-container:
	docker run --name pocket-bot -p 80:80 --env-file .env pocket-bot:v0.1