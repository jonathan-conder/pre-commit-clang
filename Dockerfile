# syntax=docker/dockerfile:1

FROM alpine:3.14

RUN --mount=type=cache,target=/var/cache/apk \
    apk add --update-cache clang-extra-tools py3-pip && \
    pip3 install pre-commit
