#!/bin/bash
distr="apache-jena-fuseki-3.17.0"
wget --no-check-certificate https://archive.apache.org/dist/jena/binaries/$distr.tar.gz -O-|tar -zx --strip-components 1 -C /opt/fuseki/ $distr
