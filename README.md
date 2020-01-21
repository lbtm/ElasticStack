# ElasticStack [![Actions Status](https://github.com/lbtm/ElasticStack/workflows/CI/badge.svg)](https://github.com/lbtm/ElasticStack/actions)

ELK with Filebeat easy way by docker-compose


# Setup Elastic Stack 7.5.x
Start a Elastic Stack environment
* Kibana (:5601)
* Elasticsearch (:9200)
* Logstash (:5044) 
* Filebeat

# Requirement 
## Install docker >= 18.09.x
Have docker install on your local machine.  
Refer to docker installation page :   
* Fedora : https://docs.docker.com/install/linux/docker-ce/fedora/  
* Ubuntu : https://docs.docker.com/install/linux/docker-ce/ubuntu/

## Install docker-compose
```bash
#Fedora:
dnf install -y docker-compose
docker-compose --version

#Ubuntu:
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
```

# Start Elastic Stack
Running the following command to start Elastic Stack
```bash
git clone https://github.com/lbtm/ElasticStack.git
cd ElasticStack
docker-compose up -d --build
```

## Import data into Elasticsearch:
# Workflow:
* Logs -> Beats -> Logstash -> Elasticsearch <- Kibana
---
* Filebeat config file (./filebeat/filebeat.yml)
* Logstash config file (./logstash/logstash.conf)

Elasticsearch url :
* http://localhost:9200

Kibana url :
* http://localhost:5601


# Troubleshooting
Elasticsearch container keeps crashing, your vm.max_map_count might be too low :
* https://www.elastic.co/guide/en/elasticsearch/reference/current/vm-max-map-count.html

```bash
sudo sysctl vm.max_map_count
vm.max_map_count = 65530

sudo sysctl -w vm.max_map_count=262144
```

## Chrome extension
elasticsearch-head - A web front end for an Elasticsearch cluster
* Install ElasticSearch Head" from the Chrome Web Store : https://chrome.google.com/webstore/detail/elasticsearch-head/ffmkiejjmecolpfloofpjologoblkegm/
* Click the extension icon in the toolbar of your web browser

# Links
* https://docs.docker.com/compose/overview/
* https://www.elastic.co/guide/en/logstash/current/plugins-filters-grok.html
* https://grokconstructor.appspot.com/do/match
* https://github.com/logstash-plugins/logstash-patterns-core/tree/master/patterns
