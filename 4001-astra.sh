#!/bin/bash

# PENDING REMOVAL due to PYTHON 2

mkdir -p /opt/web 2>/dev/null
git clone https://github.com/flipkart-incubator/Astra.git /opt/web/astra
pip2 install -r /opt/web/astra/requirements.txt
