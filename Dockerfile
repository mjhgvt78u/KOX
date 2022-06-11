FROM alpine

ARG UUID="1eb6e917-774b-4a84-aff6-b058577c60a5"

ADD misaka.sh /misaka.sh
ADD kano /usr/local/bin/kano

RUN apk update && \
    apk add -f --no-cache ca-certificates wget unzip bash && \
    chmod 777 /misaka.sh && \
    chmod 777 /usr/local/bin/kano

CMD /misaka.sh