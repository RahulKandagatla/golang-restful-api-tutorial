FROM golang:latest

ENV PORT 8000

WORKDIR /app

COPY go.mod ./

COPY go.sum ./

RUN go mod download

COPY . .

RUN go build -o golang-restful-api-tutorial .

EXPOSE 8000

CMD ["./golang-restful-api-tutorial"]