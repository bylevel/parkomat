FROM golang:1.6-alpine

RUN mkdir -p /go/src/github.com/bylevel/parkomat

COPY . /go/src/github.com/bylevel/parkomat

RUN apk add --update git

RUN go get github.com/bylevel/parkomat/...

RUN go build github.com/bylevel/parkomat

EXPOSE 53
EXPOSE 53/udp

CMD parkomat
