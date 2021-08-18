FROM docker.elastic.co/beats/heartbeat:7.14.0
COPY heartbeat.yml /usr/share/heartbeat/heartbeat.yml
USER root
RUN chmod go-w /usr/share/heartbeat/heartbeat.yml
USER heartbeat
