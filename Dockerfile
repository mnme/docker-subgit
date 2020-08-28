FROM openjdk:8-jre-alpine

ENV SUBGIT_VERSION=3.3.10

RUN \
  apk add --no-cache git curl bash && \
  curl -L -o /tmp/subgit.zip https://subgit.com/files/subgit-${SUBGIT_VERSION}.zip && \
  cd /tmp && unzip subgit.zip && rm -f subgit.zip && \
  mv /tmp/subgit-${SUBGIT_VERSION} /usr/local/bin/subgit && \
  ln -s /usr/local/bin/subgit/bin/subgit /bin/subgit

WORKDIR '/subgit'
