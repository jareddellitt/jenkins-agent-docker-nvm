#!/usr/bin/env bash

set +x
echo running \`. ${NVM_DIR}/nvm.sh --no-use\` > /dev/stderr
. ${NVM_DIR}/nvm.sh --no-use

echo running \`nvm install\` > /dev/stderr
nvm install

${YARN_DIR}/bin/yarn install
${YARN_DIR}/bin/yarn test

set -x
