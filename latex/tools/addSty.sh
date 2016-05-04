#!/bin/bash

DIR="${BASH_SOURCE%/*}"
if [ ! -d "${DIR}" ]; then
  DIR="${PWD}"
fi

if [ -z ${TEXMF_ROOT} ]; then
  echo "TEXTMF_ROOT not set. Exiting"
  exit
fi

PACKAGES_PATH="${SHARED_ROOT}/latex/src/packages"
find "${PACKAGES_PATH}" -type f -name "*.sty" -print | \
  while read FILE; do
    FILENAME="$(basename ${FILE})"
    ln -sf "${FILE}" "${TEXMF_ROOT}/tex/latex/selfCrafted/${FILENAME}"
  done

texhash
echo "Added sty files in ${PACKAGES_PATH} to
${TEXMF_ROOT}/tex/latex/selfCrafted. Ran texhash."

