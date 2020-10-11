FROM alpine:latest

# Add hello scripts
COPY sayhello.sh /usr/local/bin
#executable permission by running chmod +x
# RUN chmod +x /usr/local/bin/sayhello.sh
RUN sed -i 's/\r$//' /usr/local/bin/sayhello.sh  && \  
        chmod +x /usr/local/bin/sayhello.sh

# Make docker-compose wait for container dependencies be ready
# Solution 1: use dockerize tool -----------------------------
RUN apk add --no-cache openssl
ENV DOCKERIZE_VERSION v0.6.1

COPY images/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz .
RUN tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

# Solution 2: use docker-compose-wait tool -------------------
# ENV WAIT_VERSION 2.7.2
# ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
# RUN chmod +x /wait
# ENTRYPOINT ["/usr/local/bin/sayhello"]
# CMD ["a"]
