#!/usr/bin/env bash
parent_path=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P )
cd "$parent_path"

pip install -qU pip
pip install -qUr requirements.txt
