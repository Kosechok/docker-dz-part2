FROM golang:1.21.1

WORKDIR /src

COPY go.* ./
COPY main.go ./

RUN go mod download

RUN go mod verify

COPY . /src
RUN go build -o /main
ENTRYPOINT ["/main"]
