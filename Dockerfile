FROM ubuntu:22.04
RUN apt update -y

# postfixをインストール
RUN DEBIAN_FRONTEND=noninteractive apt install postfix -y

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

