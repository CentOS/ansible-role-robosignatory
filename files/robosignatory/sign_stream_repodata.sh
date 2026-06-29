#!/bin/bash

# purpose : sign stream repodata through gssproxy for krb5 access to hsm


release="$1"

if [ -z ${release} ] ; then
  echo "usage: sign_stream_repodata.sh release"
  echo "example sign_stream_repodata.sh 10-stream"
  exit 1
fi	

# switching to release compose and signing repodata
pushd /mnt/kojishare/staged/${release}/

for txt in $(find . -name 'repomd.xml');
do
    GSS_USE_PROXY=yes rh-signing-client --key=centosofficial --detachsign ${txt} | tee ${txt}.asc
done

popd
