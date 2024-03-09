FROM debian:stable-slim
RUN apt update && apt-get install -y wget git ca-certificates
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.123.8/hugo_extended_0.123.8_Linux-64bit.tar.gz && \
    tar -xvzf hugo_extended_0.123.8_Linux-64bit.tar.gz  && \
    chmod +x hugo && \
    mv hugo /usr/local/bin/hugo && \
    rm -rf hugo_extended_0.123.8_Linux-64bit.tar.gz
ADD . /site
CMD ["/usr/local/bin/hugo", "-s", "/site", "server", "-D", "--bind", "0.0.0.0", "--port", "30000"]
