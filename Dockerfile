FROM node:lts-alpine3.15
RUN apk update \
    && apk upgrade
RUN apk add npm
RUN mkdir /scripts
COPY start.sh /scripts/start.sh
RUN chmod +x /scripts/start.sh
EXPOSE 3000
WORKDIR /project-data
ENTRYPOINT ["/scripts/start.sh"]