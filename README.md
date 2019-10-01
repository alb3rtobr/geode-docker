This repo is based on [markito/geode-docker](https://github.com/markito/geode-docker) repo

# mygeode

Contains Dockerfile to build [alb3rtobr/mygeode](https://cloud.docker.com/u/alb3rtobr/repository/docker/alb3rtobr/mygeode) image. 


# mygeodecomposer

Contains Dockerfile to build a Geode image based on [alb3rtobr/mygeode](https://cloud.docker.com/u/alb3rtobr/repository/docker/alb3rtobr/mygeode) adding the `scripts` & `jars` folder.

## Deploy jars
Any jar file stored in the `mygeodecomposer/jars` folder will be automatically deployed on start up. Remember to build `mygeodecomposer` when a new jar is copied into that folder.

```bash
$> docker build -t alb3rtobr/mygeodecomposer .
```

In the `scripts` folder there are scripts to start locators and servers, using docker-compose

```bash
$> docker-compose up
```

# Generate Geode documentation with Docker

Apache Geode User Guide is written in markdown format, which can be transformed to an HTML user guide using [Bookbinder](https://github.com/pivotal-cf/bookbinder).

It is possible generate the HTML documentation using a [Docker image of Bookbinder](https://hub.docker.com/r/ductha/bookbinder). To run the container execute:

`docker run -ti --rm -p 9292:9292 --entrypoint=/bin/bash -v :/app -v <PATH TO YOUR GEODE REPO>:/geode ductha/bookbinder:10.1.14`

And run the following commands:

* `cd /geode/geode-book`
* `bundle install`
* `bundle exec bookbinder bind local`
* `cd final_app`
* `bundle install`
* `rackup --host 0.0.0.0`

Documentation will be available at `http://localhost:9292`.
