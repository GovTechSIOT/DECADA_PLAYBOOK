## Container base
FROM harbor.siotgov.tech/base_images/openjdk11:latest
RUN apk update && apk upgrade && apk add curl && apk add npm && apk add --no-cache tini
ENV TZ="Asia/Singapore"

## Container LABELs
LABEL maintainer="Govtech SIOT"
LABEL docker_docsify_version_major="1"
LABEL docker_docsify_version_minor="0"
LABEL docker_docsify_version_patch="0"
LABEL docker_docsify_version_revision="1"
LABEL docker_docsify_version="1.0.0.1"

## Container setup
RUN npm install -g docsify-cli@latest

COPY . .
WORKDIR /docs
RUN ls
EXPOSE 3000

ENTRYPOINT ["/sbin/tini", "--"]
CMD [ "docsify", "serve", "." ]
