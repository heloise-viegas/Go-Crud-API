FROM golang:1.18
WORKDIR /app
RUN go mod init F\Go\Go\src\go\Go-Crud-API
#COPY go.mod ./
COPY go.mod go.sum ./
RUN go mod download
COPY . ./
RUN go build main.go
EXPOSE 8080
CMD ["./main"]
