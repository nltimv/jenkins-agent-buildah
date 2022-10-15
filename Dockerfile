FROM docker.io/jenkins/inbound-agent:latest-alpine

USER root

RUN apk add --no-cache git buildah

USER jenkins

ENTRYPOINT ["/usr/local/bin/jenkins-agent"]