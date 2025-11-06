FROM alpine:3.22.2@sha256:4b7ce07002c69e8f3d704a9c5d6fd3053be500b7f1c69fc0d80990c2ad8dd412

ARG TARGETPLATFORM

ENTRYPOINT ["/usr/bin/kured"]

RUN apk update --no-cache && apk upgrade --no-cache && apk add --no-cache ca-certificates tzdata

COPY $TARGETPLATFORM/kured /usr/bin/kured
