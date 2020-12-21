ARG app_root=/usr/src/app

FROM ruby:2.7.2-alpine3.12

ARG app_root
WORKDIR $app_root

RUN apk add --no-cache gcc g++ libc-dev libxslt-dev libxml2-dev make mysql-client mysql-dev tzdata nodejs yarn

CMD ["/bin/ash"]
