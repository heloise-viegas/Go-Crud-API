FROM golang:1.18
WORKDIR /app
#RUN go mod init
COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY . .
RUN go build main.go
EXPOSE 8080
CMD ["./main"]
