FROM alpine:3.8

ENV SUBGIT_VERSION=3.3.5

RUN \
  apk add --update curl bash openjdk8-jre && \
  rm -rf /var/cache/apk/* && \
  curl -L -o /tmp/subgit.zip https://subgit.com/files/subgit-${SUBGIT_VERSION}.zip && \
  cd /tmp && unzip subgit.zip && rm -f subgit.zip && \
  mv /tmp/subgit-${SUBGIT_VERSION} /usr/local/bin/subgit && \
  ln -s /usr/local/bin/subgit/bin/subgit /bin/subgit

WORKDIR '/subgit'
