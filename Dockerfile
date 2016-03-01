FROM java:8u72-jre
MAINTAINER Gary Gao <garygaowork@gmail.com> (@garyelephant)

# Set default Logstash version
ENV LOGSTASH_VERSION 2.2.2

# Set default Logstash source directory
ENV LOGSTASH_SRC_DIR /opt/logstash

# Download and install Logstash
RUN cd /tmp && \
    wget https://download.elastic.co/logstash/logstash/logstash-${LOGSTASH_VERSION}.tar.gz && \
    tar -xzvf ./logstash-${LOGSTASH_VERSION}.tar.gz && \
    mv ./logstash-${LOGSTASH_VERSION} ${LOGSTASH_SRC_DIR} && \
    rm ./logstash-${LOGSTASH_VERSION}.tar.gz

ENTRYPOINT ["/opt/logstash/bin/logstash", "-f" , "/etc/logstash/conf.d"]
