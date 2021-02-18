# docker_modifying

Modifying and adding elements to a container.

## Basics

### The Dockerfile



### Dockerfile to an Image

A Dockerfile is the construction of a Docker image.

### Anatomy of a Dockerfile

Certain characteristics of a Dockerfile must be included in order to compile the image into a container. The order will be shown down below, but let's dive into what some of these characteristics are. This will be a surface level overview. For a more in depth look into what some of these charactersitics are read [this file here](https://gist.github.com/adamveld12/4815792fadf119ef41bd). 

**FROM** - First, we must specify what "operating software" we will be using, or more correctly a "base image". This is in quotes because once inside the docker container, the OS will be contained inside the container. (It doesn't have to be an OS that is a base, but for demonstrational purposes, this is the easiest base image idea.) This is specified by using the **FROM** command. The OS that the container runs on can vary greatly, but is mostly important for any dependencies that the other attribute of the container will run on. To pick an OS, visit [Docker Hub](hub.docker.com) and search for which one you would like to use. For example, we could use the latest version of Ubuntu like so:

```docker
FROM ubuntu:<Version>
```

We can specify a version here if needed, or use "ubuntu:latest" to use the latest stable version available. 

**RUN** - Next, a crucial part that we must have is some command that is going to run when we make this. Conveniently, this is the **RUN** command. This could be anything from making a directory inside the container to installing Ubuntu applications such as Vim. If we are using an OS, then it must be formatted in the that OS's way, for example

```docker
RUN apt-get install vim
```

**WORKDIR** - This is what sets the working directory inside of our container if we want/need to.



Next, we use **MAINTAINER** to set the maintainer info (or creater info).

```docker
MAINTAINER <name>, <email>
```

To add a user we would run the following

```docker
USER <username>
```





**ADD** - An option here would be to copy over local/remote files into the container. This would be here when the container is created, if necessary. An example being a Python virtual environment, listing all packages and versions. 

```docker
ADD <src> <dest>
```

As an example, this [Dockerfile](/Dockerfile) will give a simple example of file that can be made into an image, then into a container. This example is so simple that it might seem unhelpful, but it contains the basic commands needed to build the image and make it into a container. 

## Modifying
