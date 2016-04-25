#!/bin/bash

# usage:
# ./check_checksum.sh <file> <hash>

filehash=`md5 -q $1`

echo "Checking file: $1, calculated as $filehash"
echo "Using MD5 file: $2"

if [ $filehash != $2 ]
then
  echo "MD5 sums mismatch!!!"
else
  echo "Checksums OK."
fi
