# docker-zap2xml
See http://zap2xml.awardspace.info/ for original perl script and guidance for the configuration file.

DockerFile to build from Alpine for a small, portable zap2xml instance. Removes dependency questions.

Requires:
  * /data volume, This volume is used for chache, config, and output

Provides:
  * xmltv.xml (or other name if config changes the filename) in the /data mount.

## Build process (manual)
  1. Clone this repository
  1. Open the cloned directory and run
    `docker build -t zap2xml .`

## Example run command (Using Docker Hub)
  `docker run --rm -v /data/docker/zap2xml:/data crlorentzen/zap2xml -C /data/zap2xml.conf`

## Example docker-compose.yml (Using Docker Hub)
used https://composerize.com/ to convert. It's a great tool!
```
version: '3.3'
services:
    zap2xml:
        volumes:
            - '/data/docker/zap2xml:/data'
        image: crlorentzen/zap2xml
        command: -C /data/zap2xml.conf
```
