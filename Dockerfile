FROM golang:1.18-alpine

WORKDIR /opt

COPY main.go go.mod ./

ENV CGO_ENABLED=0

RUN go build -tags netgo -ldflags '-w -s' -o tcp-proxy .

FROM scratch
COPY --from=0 /opt/tcp-proxy /tcp-proxy
ENTRYPOINT [ "/tcp-proxy" ]

