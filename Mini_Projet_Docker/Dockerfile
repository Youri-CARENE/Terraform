FROM alpine:latest
RUN apk update && apk upgrade && apk add --update terraform
WORKDIR /app
COPY . /app
VOLUME /app/data
CMD ["terraform", "init"]
