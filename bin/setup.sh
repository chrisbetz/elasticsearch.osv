#!/bin/sh

## Turn on debugging.
## set -x



## setup.sh: Run this script once to download and extract Elasticsearch.
## No need to run this over and over again, just do that if you change the version you'd like to get.


## pull this into whatever. vars.sh? because otherwise it's duplicated.
SOFTWARE="elasticsearch"
VERSION="1.5.2"
current_dir=${PWD}
software_version_name=${SOFTWARE}-${VERSION}
tarball_name=${software_version_name}.tar.gz


## clean up
echo "*** Removing previous upstream artefacts from ${current_dir}/upstream/"
mkdir -p ${current_dir}/upstream/
rm -r ${current_dir}/upstream/*
mkdir -p ${current_dir}/upstream/${software_version_name}

echo "*** Downloading ${SOFTWARE} version ${VERSION} to ${current_dir}/upstream"

## sorry, elastisch is chaninging url structure from version to version, so you can not change version only.
curl -o ${current_dir}/upstream/${tarball_name} https://download.elastic.co/elasticsearch/elasticsearch/${tarball_name}
# https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.3.1/elasticsearch-2.3.1.tar.gz

echo "*** Extracting ${tarball_name} to ${current_dir}/upstream/${software_version_name}"
tar xvf ${current_dir}/upstream/${tarball_name} --directory ${current_dir}/upstream/

echo "*** Done! Use bin/make-rootfs.sh to create the ROOTFS folder, or directly run capstan build, as this will run bin/make-rootfs.sh for you."
