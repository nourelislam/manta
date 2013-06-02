#!/usr/bin/env bash
#
# Manta
# Copyright (c) 2013 Illumina, Inc.
#
# This software is provided under the terms and conditions of the
# Illumina Open Source Software License 1.
#
# You should have received a copy of the Illumina Open Source
# Software License 1 along with this program. If not, see
# <https://github.com/downloads/sequencing/licenses/>.
#

#
# get version number from git describe
#

set -o nounset

version="UNKNOWN"
git_version=$(git describe 2> /dev/null)
if [ $? == 0 ]; then
    version=$git_version
fi

echo -n $version

