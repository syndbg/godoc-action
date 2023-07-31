FROM golang:1.20.6-alpine3.18

ENV GOPATH /

COPY ./main.bash /bin/main.bash

RUN apk add --no-cache bash curl wget git \
  && go install golang.org/x/tools/cmd/godoc@latest

CMD ["/bin/main.bash"]
