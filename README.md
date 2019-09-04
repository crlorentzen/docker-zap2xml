# docker-zap2xml
See http://zap2xml.awardspace.info/ for original perl script and guidance for the configuration file.
DockerFile to build from Alpine a small zap2xml instance
Requires a /data volume, in this volume one must place
  * zap2xml.conf per the original zap2xml development
Provides:
  * zap2xml.xml (or other name if config changes the filename) in the /data mount.

## Build process (standard)
  1. Clone this repository
  1. Open the cloned directory and run
    `docker build -t zap2xml .`

## Example run command
  `docker run --rm -v /data/docker/zap2xml:/data zap2xml`

### Future ideas
  * Example docker-compose.yml
  * Example zap2xml.conf
  * Submit to Docker Hub
