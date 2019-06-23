FROM golang:1.12
ADD ./src /go/src/app
WORKDIR /go/src/app

# Set up CompileDaemon for hot-reloading
RUN go get github.com/githubnemo/CompileDaemon
ENTRYPOINT ../../bin/CompileDaemon -command="./app"

CMD go run main.go