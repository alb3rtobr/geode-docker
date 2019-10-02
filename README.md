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

# geodedoc

Contains the Dockerfile of [alb3rtobr/geodedoc](https://cloud.docker.com/repository/docker/alb3rtobr/geodedoc) image, that allows you to generate the Apache Geode documentation. [More info](https://github.com/alb3rtobr/geode-docker/tree/master/geodedoc).
