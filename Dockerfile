FROM golang

RUN \
  go get -v github.com/WinPooh32/peerstohttp

ENTRYPOINT [ "peerstohttp" ]
