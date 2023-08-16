$version = '8.9.0'


docker image pull docker.elastic.co/elasticsearch/elasticsearch:$version
docker image pull docker.elastic.co/kibana/kibana:$version
docker image pull docker.elastic.co/beats/filebeat:$version
docker image pull docker.elastic.co/beats/metricbeat:$version
docker image pull docker.elastic.co/beats/packetbeat:$version
docker image pull docker.elastic.co/beats/winlogbeat:$version
docker image pull docker.elastic.co/beats/auditbeat:$version
docker image pull docker.elastic.co/beats/heartbeat:$version