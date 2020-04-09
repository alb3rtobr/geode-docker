
This repo contains some files I use for building an Apache Geode cluster using Docker:

# Custom Geode image

The 'Dockerfile' on the root of this repo can be used to create an Alpine-based image from a pre-compiled Geode repository.
* Copy the file into the root of your Geode repo
* Compile Geode
* Build the image, for example:
```
$> docker build -t alb3rtobr/geode:1.12 .
```


# Geode cluster with Docker compose

The 'geode-compose' folder contains the files needed to create a Geode cluster with a locator and two servers using Docker compose:

```bash
$> cd geode-composer
$> docker-compose up
```

I use an image based on the one created by the previously mentioned 'Dockerfile' and two folders are added:

* `scripts`: contains the needed scripts two start all the cluster members
* `jars`: any jar file stored in this folder will be deployed on start up.


Using one Docker image for the compiled code and other one for the 'jars' files has the advantage that when any jar file is updated, the generation of the image is faster. And also, decoupling Geode executables from the Docker compose configuration, makes the Geode image more reusable (I can use it in Kubernetes, for example).

