#!/bin/sh

## make-rootfs is setting up the ROOTFS. Run this during build to make sure your ROOTFS is up to date.

## Turn on debugging.
## set -x


## pull this into whatever. vars.sh? because otherwise it's duplicated.
SOFTWARE="elasticsearch"
VERSION="1.5.2"
current_dir=${PWD}
software_version_name=${SOFTWARE}-${VERSION}
tarball_name=${software_version_name}.tar.gz



## clean up
echo "*** Removing previous ROOTFS (${current_dir}/ROOTFS)"
mkdir -p ${current_dir}/ROOTFS
rm -r ${current_dir}/ROOTFS
mkdir -p ${current_dir}/ROOTFS/usr/elasticsearch/lib/
mkdir -p ${current_dir}/ROOTFS/usr/elasticsearch/config/
mkdir -p ${current_dir}/ROOTFS/usr/elasticsearch/data/


## coping over libs
echo "*** Copying libs"
cp ${current_dir}/upstream/${software_version_name}/lib/**.jar ${current_dir}/ROOTFS/usr/elasticsearch/lib/

## elasticsearch-VERSION.jar needs to be the first in the classpath,
## but we do not want to deal with versioned jars in the Capstanfile.
## So, remove the version.
mv ${current_dir}/ROOTFS/usr/elasticsearch/lib/elasticsearch-*.jar ${current_dir}/ROOTFS/usr/elasticsearch/lib/elasticsearch.jar

echo "*** Done!"
