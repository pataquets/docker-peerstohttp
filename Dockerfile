FROM golang

RUN \
  go get -d -v github.com/WinPooh32/peerstohttp/cmd

WORKDIR ${GOPATH}/src/github.com/WinPooh32/peerstohttp

RUN \
  cd cmd && \
  go build -mod=vendor -o=peerstohttp

ENTRYPOINT [ "cmd/peerstohttp" ]
