#!/bin/bash
# Environment setting script.
# don't use .oraenv don't use oraenv don't use oraenv

source ./setkeydb.sh keydb1
lsnrctl $1
