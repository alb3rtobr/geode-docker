This repo is based on [markito/geode-docker](https://github.com/markito/geode-docker) repo

# mygeode

Contains Dockerfile to build [alb3rtobr/mygeode](https://cloud.docker.com/u/alb3rtobr/repository/docker/alb3rtobr/mygeode) image. 


# mygeodecomposer

Contains Dockerfile to build an image based on [alb3rtobr/mygeode](https://cloud.docker.com/u/alb3rtobr/repository/docker/alb3rtobr/mygeode) that adds the `scripts` folder.

In the scripts folder there are scripts to start locators and servers, using docker-compose

```
$> docker build -t alb3rtobr/mygeodecomposer .

$> docker-compose up
```
