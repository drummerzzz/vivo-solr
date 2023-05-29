FROM openjdk:8-jre-slim

RUN apt-get update && apt-get install -y wget

RUN wget https://archive.apache.org/dist/lucene/solr/5.5.0/solr-5.5.0.tgz && \
    tar xzf solr-5.5.0.tgz && \
    rm solr-5.5.0.tgz

WORKDIR /solr-5.5.0

COPY . /solr-5.5.0

EXPOSE 8983

ENV SOLR_OPTS="-Djava.awt.headless=true -XX:+UseConcMarkSweepGC"

# ./bin/solr create_core -c vivocore -d ./vivocore/

CMD ["bin/solr", "start", "-p", "8983", "-f"]


