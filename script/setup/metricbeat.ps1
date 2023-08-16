# $dir = (Get-Item $PSScriptRoot).Parent.Parent

# echo $dir

# https://www.elastic.co/guide/en/beats/metricbeat/current/running-on-docker.html
# https://www.elastic.co/guide/en/beats/metricbeat/current/configuration-general-options.html


docker run --rm --name metricbeat-setup `
    docker.elastic.co/beats/metricbeat:8.9.0 `
    setup -E setup.kibana.host=host.docker.internal:5601 `
    -E output.elasticsearch.hosts=["https://host.docker.internal:9200"] `
    -E output.elasticsearch.ssl.verification_mode=none `
    -E output.elasticsearch.username=elastic `
    -E output.elasticsearch.password=elastic 