FROM alpine
RUN apk update
RUN apk add curl
RUN curl https://google.com
