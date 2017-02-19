#!/usr/bin/env bash

set -e

cd src/gcp-service-broker
zip /tmp/gcp-service-broker.zip -r . -x *.git* product/\* release/\*

tile build

mv product/*.pivotal candidate/