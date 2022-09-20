From rubylang/ruby:2.7.4-bionic as base

FROM base as builder

USER root

COPY install-packages.sh .
RUN /bin/bash -c 'tail ./install-packages.sh'
RUN chown root:root ./install-packages.sh
RUN chmod +x /install-packages.sh
RUN ./install-packages.sh

ENV APP_USER=esgar APP_UID=1001 APP_GID=1001 APP_HOME=/opt/apps/rspec-practice

RUN groupadd --gid "${APP_GID}" "${APP_USER}"
RUN adduser -u "${APP_UID}" --gid "${APP_GID}" --home "${APP_HOME}" "${APP_USER}"
RUN mkdir -p ${APP_HOME} && chown "${APP_UID}":"${APP_GID}" "${APP_HOME}"

WORKDIR "${APP_HOME}"

COPY ./Gemfile ./Gemfile.lock "${APP_HOME}"/

COPY . "${APP_HOME}"
