FROM alpine:3.11
MAINTAINER Alberto Bustamante Reyes <alberto.bustamante.reyes@est.tech>

RUN apk add openjdk8 vim bash ncurses 

RUN mkdir -p /geode/geode-assembly/build/install/

# Set bash as default shell
#RUN mv /etc/passwd /etc/passwd.bckp
#RUN awk '{ gsub(/ash/,"bash"); print }' /etc/passwd.bckp  > /etc/passwd

ADD geode-assembly/build/install/apache-geode geode/geode-assembly/build/install/apache-geode

ENV GEODE_HOME /geode/geode-assembly/build/install/apache-geode
ENV PATH $PATH:$GEODE_HOME/bin:$JAVA_HOME/bin
ENV APP_RESULT_VIEWER external
# Default ports:
# RMI/JMX 1099
# REST 8080
# PULSE 7070
# LOCATOR 10334
# CACHESERVER 40404
# EXPOSE  1024 8080 10334 40404 1099 7070
VOLUME ["/data/"]
ENTRYPOINT ["/bin/bash"]
