FROM alpine:3.10.2
MAINTAINER Craig R Lorentzen (https://github.com/crlorentzen/)

RUN apk add --no-cache \
  perl \
  perl-http-cookies \
  perl-lwp-useragent-determined \
  perl-json \
  perl-json-xs \
  perl-lwp-protocol-https \
  perl-gd

VOLUME /data
COPY zap2xml.pl /zap2xml.pl
RUN chmod 755 /zap2xml.pl

WORKDIR /data
ENTRYPOINT ["/zap2xml.pl"]
