FROM golang:1.22.0

WORKDIR /app

COPY . .

# Download and install the dependencies

RUN go get -d -v ./...

# build the image
RUN go build -o api .

EXPOSE 8000

CMD ["./api"]
