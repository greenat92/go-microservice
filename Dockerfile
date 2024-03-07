FROM golang:latest

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

COPY . ./

RUN go build -o /go-microservice

EXPOSE 3000

CMD [ "/go-microservice"]