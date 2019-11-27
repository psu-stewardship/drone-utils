FROM alpine:3.9

RUN apk add --no-cache \
    git py3-pip docker curl

COPY requirements.txt /
RUN pip3 install -r requirements.txt

ARG foo
ENV YQ_VERSION=2.4.1
RUN curl -ksSL -o /bin/argocd https://argocd.dsrd.libraries.psu.edu/download/argocd-linux-amd64
RUN curl -ksSl -o /bin/yq https://github.com/mikefarah/yq/releases/download/$YQ_VERSION/yq_linux_amd64
RUN chmod +x /bin/argocd
RUN chmod +x /bin/yq



