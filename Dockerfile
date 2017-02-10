FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.16

RUN gem install error_stalker --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["create_indexes"]
CMD ["--help"]
