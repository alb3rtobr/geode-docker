# Generate Apache Geode documentation with Docker

[Apache Geode](http://github.com/apache/geode) User Guide is written in markdown format, which can be transformed to an HTML user guide using [Bookbinder](https://github.com/pivotal-cf/bookbinder). I have implemented a Docker image (based on [ductha/bookbinder](https://hub.docker.com/r/ductha/bookbinder)) to generate the HTML documentation without installing Bookbinder or Ruby.

Pull the image from Dockerhub:

`docker pull alb3rtobr/geodedoc`

And run the container as follows:

`docker run -ti --rm -p 9292:9292 -v <PATH TO YOUR GEODE REPO>:/geode alb3rtobr/geodedoc`

Documentation will be available at `http://localhost:9292`.
