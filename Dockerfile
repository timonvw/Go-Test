FROM golang:1.14

# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# Copy the local package files to the container's workspace.
ADD ./src /go/src/github.com/timonvw/go-test/bin

# Build the bin command inside the container.
# (You may fetch or manage dependencies here,
# either manually or with a tool like "godep".)
WORKDIR /go/src/github.com/timonvw/go-test/bin

RUN go get ./
RUN go build

# Run the outyet command by default when the container starts.
CMD bin

# Document that the service listens on port 8080.
EXPOSE 8080