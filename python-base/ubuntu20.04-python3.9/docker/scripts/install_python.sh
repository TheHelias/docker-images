#!/usr/bin/env bash

# shellcheck disable=SC2039
set -exuo pipefail

# Install python
apt-get install -y --no-install-recommends \
  "python${APT_PYTHON_VERSION}" \
  python3-distutils

# Set python active
update-alternatives --install /usr/bin/python python /usr/bin/python3.9 10
update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 10
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1

# Install Pip
curl https://bootstrap.pypa.io/get-pip.py | python
