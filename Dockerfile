FROM alpine:latest

# build/code
RUN apk add --no-cache build-base git go bash bash-completion ncurses vim tmux

# network
RUN apk add --no-cache bind-tools iputils tcpdump curl nmap tcpflow iftop net-tools mtr netcat-openbsd bridge-utils iperf ngrep tcptraceroute busybox-extras nmap-scripts

# certificates
RUN apk add --no-cache ca-certificates openssl

# processes/io
RUN apk add --no-cache htop atop strace iotop sysstat ltrace ncdu logrotate hdparm pciutils psmisc tree pv

# frameworks and other tools
RUN apk add --no-cache openssh-client kubectl jq yq

# Install gcloud CLI
RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin

ENTRYPOINT bash
