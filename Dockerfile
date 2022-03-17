FROM alpine:latest
RUN  apk add curl tar 
RUN curl -s https://download.docker.com/linux/static/stable/x86_64/docker-20.10.9.tgz | tar -xzf-

FROM alpine:latest
RUN apk update && apk add aws-cli
COPY --from=0 /docker/docker /usr/local/bin

ENTRYPOINT [ "/bin/sh" ]