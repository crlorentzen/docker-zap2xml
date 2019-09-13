# docker-zap2xml
See http://zap2xml.awardspace.info/ for original perl script and guidance for the configuration file.

DockerFile to build from Alpine for a small, portable zap2xml instance. Removes dependency questions.

Requires:
  * /data volume, This volume is used for chache, config, and output

Provides:
  * xmltv.xml (or other name if config changes the filename) in the /data mount.

## Build process (standard)
  1. Clone this repository
  1. Open the cloned directory and run
    `docker build -t zap2xml .`

## Example run command
  `docker run --rm -v /data/docker/zap2xml:/data zap2xml -C /data/zap2xml.conf`

## Example docker-compose.yml
used https://composerize.com/ to convert. It's a great tool!
```
version: '3.3'
services:
    zap2xml:
        volumes:
            - '/data/docker/zap2xml:/data'
        image: zap2xml
        command: -C /data/zap2xml.conf
```

### Future ideas
  * Example zap2xml.conf
  * Submit to Docker Hub

