FROM alpine:latest

RUN apk add git go g++
RUN git clone https://github.com/gohugoio/hugo.git
RUN cd hugo && go install --tags extended
RUN rm -rf hugo
RUN ln -s /root/go/bin/hugo /usr/local/bin/