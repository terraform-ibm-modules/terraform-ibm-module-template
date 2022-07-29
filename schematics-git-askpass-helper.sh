#!/bin/sh
# This script will only be used in Schematics, more details please check: https://github.ibm.com/GoldenEye/issues/issues/344
if ! grep -q "insteadOf = git@github.ibm.com:" ~/.gitconfig; then git config --global url."https://github.ibm.com/".insteadOf git@github.ibm.com:; fi
if ! grep -q "insteadOf = ssh://git@github.ibm.com" ~/.gitconfig; then git config --global url."https://github.ibm.com".insteadOf ssh://git@github.ibm.com; fi
exec echo "$GIT_PASSWORD"
