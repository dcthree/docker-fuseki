# docker-fuseki

A Dockerfile that produces a docker container based on Ubuntu that will
run [Fuseki](http://jena.apache.org/documentation/serving_data/index.html).

You can run the container with the flag `-e OPTS=<opts>` to pass custom
[options](http://jena.apache.org/documentation/serving_data/index.html#running-a-fuseki-server).

A Fuseki 1.1.0 build is provided under the tags `1` and `1.1.0`.
