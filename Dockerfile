FROM golang:1.18
WORKDIR /app
COPY . ./
RUN go mod init
#COPY go.mod ./
COPY go.mod go.sum ./
RUN go mod download

RUN go build main.go
EXPOSE 8080
CMD ["./main"]
