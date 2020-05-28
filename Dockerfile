#@# vim: set filetype=dockerfile:
FROM fluent/fluentd:v1.10.4-1.0
MAINTAINER Takahiro INOUE <takahiro.inoue@mail.3dcg-arts.net>

USER root

RUN gem install -N fluent-plugin-cloudwatch-logs --version 0.9.4
RUN gem install -N fluent-plugin-rewrite-tag-filter --version 2.3.0
RUN gem install -N fluent-plugin-s3 --version 1.3.2
RUN gem install -N fluent-plugin-slack --version 0.6.7

USER fluent
