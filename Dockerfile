# syntax=docker/dockerfile:1
FROM golang:1.16-alpine
WORKDIR /app
COPY main.go .
RUN go mod init go.mod &&\
    go mod tidy &&\
    go get -u github.com/go-sql-driver/mysql &&\
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

FROM alpine:latest  
WORKDIR /app
COPY ./form ./form
COPY --from=0 /app .
CMD ["./app"]  

