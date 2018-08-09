#
# Scala and sbt Dockerfile
#
# https://github.com/humansit/scala-sbt
#

# Pull base image
FROM node:4.5.0

# Env variables
#ENV SBT_VERSION 1.0.2

RUN \
    echo "Installing apt-utils" && \
    apt-get update && \
    apt-get install -y apt-utils

RUN \
  echo "Installing git" && \
  apt-get update && \
  apt-get install -y git

RUN \
  echo "Installing python" && \
  apt-get update && \
  apt-get install -y python

RUN \
  echo "Installing python-dev" && \
  apt-get update && \
  apt-get install -y python-dev

RUN \
  echo "Installing pip" && \
  apt-get update && \
  apt-get install -y python-pip


RUN \
  echo "Installing awscli" && \
  pip install awscli

RUN \
   echo "Installing bower" && \
   npm update && \
   npm install -g bower

RUN \
   echo "Installing brunch" && \
   npm update && \
   npm install -g brunch


RUN \
   echo "node version :" && \
   node -v && \
   echo "npm version :" && \
   npm -v && \
   echo "brunch version :" && \
   brunch -v && \
   echo "bower version :" && \
   bower -v && \
   echo "awscli version :" && \
   aws --v


# Define working directory
WORKDIR /root
