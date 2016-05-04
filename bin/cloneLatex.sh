#!/bin/bash

display_usage() {
  echo "cloneLatex [PATH] [FILE]"
  echo "Clones proto latex project into PATH, creating a tex file called FILE"
}

#Clones latex protofile
if [ $# -le 1 ]; then
  display_usage
  exit 1
fi

if [[ ( $1 == "--help") || $1 == "-h" ]]; then
  display_usage
  exit 1
fi

#Copy to ${1} and then edit required places, to change proto to FILE
cp -r ${SHARED_ROOT}/latex/src/protoDir/* ${1}
cd ${1}
mv proto.tex ${2}.tex
sed -i -e "s/proto/${2}/g" makefile
cd -
