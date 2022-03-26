FROM alpine:3.15.2

RUN apk add --no-cache git && \
    mkdir /workdir

COPY git-chglog /usr/local/bin/git-chglog

WORKDIR /workdir
RUN chmod +x /usr/local/bin/git-chglog

ENTRYPOINT [ "/usr/local/bin/git-chglog" ]