## Container base
FROM harbor.siotgov.tech/base_images/openjdk11:latest
RUN apk update && apk upgrade && apk add curl && apk add npm
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
WORKDIR /usr/local/docsify
COPY . .
RUN chmod +x ./docs


## Container environment variables
ENV DEBUG 0
ENV PORT 3000
ENV DOCSIFY_VERSION latest
ENV NODE_VERSION alpine

## Container RUNtime configuration
EXPOSE 3000

## Container entry point
ENTRYPOINT [ "docsify", "serve","./docs", "--port", "3000" ]

