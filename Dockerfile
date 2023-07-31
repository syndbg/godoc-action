FROM golang:1.20.6-alpine3.18

ENV GOPATH /
RUN go install golang.org/x/tools/cmd/godoc@latest
COPY ./main.bash /bin/main.bash

CMD ["/bin/main.bash"]
