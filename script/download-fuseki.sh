#!/bin/bash
distr="jena-fuseki-1.1.0"
wget --no-check-certificate https://archive.apache.org/dist/jena/binaries/$distr-distribution.tar.gz -O-|tar -zx --strip-components 1 -C /opt/fuseki/ $distr
