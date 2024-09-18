#!/bin/bash

source ./check_dist.sh

source ./install-scripts/install_prettier.sh $DISTRO
source ./install-scripts/install_shellcheck.sh $DISTRO
