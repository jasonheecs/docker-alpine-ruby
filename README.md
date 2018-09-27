# Ruby Docker Alpine Image

[![Build Status][travis-badge]][travis-link] [![Docker Automated Build Status][docker-build-badge]][docker-hub-link]

A docker image based on Ruby's Alpine Linux image that includes the following additional packages:
- bash
- bash-completion
- util-linux
- coreutils
- binutils
- findutils
- grep
- build-base

[Docker Hub link][docker-hub-link]

## Usage
```bash
docker pull jasonheecs/alpine-ruby
```

## Testing
Testing is done via Rspec and [Hadolint](https://github.com/hadolint/hadolint). 

To run Rspec tests:
```bash
gem install bundler
bundle install
bundle exec rspec
```

To run linting tests on the Dockerfiles, make sure Hadolint is installed and:
```bash
hadolint ./Dockerfile
```

Refer to the [travis.yml](.travis.yml) file and [Travis build logs][travis-link] for details on the automated tests and expected outputs.

## License
MIT

[docker-build-badge]: https://img.shields.io/docker/build/jasonheecs/alpine-ruby.svg
[docker-hub-link]: https://hub.docker.com/r/jasonheecs/alpine-ruby/
[travis-badge]: https://travis-ci.com/jasonheecs/docker-alpine-ruby.svg?branch=master
[travis-link]: https://travis-ci.com/jasonheecs/docker-alpine-ruby