sudo sh -c "nohup capstan run -n 'bridge' -v -b 'br0' >> /var/log/elasticsearch/elasticsearch.log 2>>/var/log/elasticsearch/error.log &"
