FROM python:3.7-alpine3.8

RUN apk update && apk upgrade && \
    apk add --no-cache git

RUN pip install git+https://github.com/dynasticorpheus/gigasetelements-cli@develop

ENTRYPOINT [ "/usr/local/bin/gigasetelements-cli" ]

