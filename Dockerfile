FROM alpine
RUN apk add git py3-pip curl

RUN pip3 install slack-webhook-cli
RUN curl -ksSL -o /bin/argocd https://argocd.dsrd.libraries.psu.edu/download/argocd-linux-amd64
RUN chmod +x /bin/argocd



