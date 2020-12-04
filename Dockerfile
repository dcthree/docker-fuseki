FROM ubuntu:focal

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install perl tar wget curl openjdk-11-jre-headless

RUN mkdir /opt/fuseki
ADD script/download-fuseki.sh /opt/fuseki/download-fuseki.sh
RUN chmod +x /opt/fuseki/download-fuseki.sh
RUN /bin/bash /opt/fuseki/download-fuseki.sh
ADD script/start-fuseki.sh /opt/fuseki/start-fuseki.sh
RUN chmod +x /opt/fuseki/fuseki-server /opt/fuseki/start-fuseki.sh
RUN mkdir /data

EXPOSE 3030

VOLUME ["/data"]

CMD ["/opt/fuseki/start-fuseki.sh"]
