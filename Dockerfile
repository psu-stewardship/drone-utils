FROM alpine:3.9

RUN apk add --no-cache \
    git py3-pip docker curl

COPY requirements.txt /
RUN pip3 install -r requirements.txt

ARG foo
RUN curl -ksSL -o /bin/argocd https://argocd.dsrd.libraries.psu.edu/download/argocd-linux-amd64
RUN chmod +x /bin/argocd



