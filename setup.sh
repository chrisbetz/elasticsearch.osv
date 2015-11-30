rm -rf elasticsearch-*.tar.bz2
rm -rf elasticsearch-*/
curl -o elasticsearch-2.0.0.tar.bz2 https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.0.0/elasticsearch-2.0.0.tar.gz
tar xvfj elasticsearch-2.0.0.tar.bz2
rm -rf ROOTFS/lib/*
cp elasticsearch-*/lib/**.jar ROOTFS/lib/
rm ROOTFS/lib/elasticsearch-*.jar
