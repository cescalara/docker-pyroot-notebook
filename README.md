Use this docker image if you need jupyter python notebooks with the CERN ROOT library. Built from rootproject/root-fedora image. Both python and ROOT C++ kernels are available.

The Dockerfile lives here: https://github.com/sidebo/docker-pyroot-notebook

Now with `rootpy` installed for both python 2 and 3!

## Run independently
Run with e.g.

`docker run -p 3000:8080 pedwink/pyroot-notebook`

and then access through localhost:3000 in your browser.

## Run interactively, mounted to current directory

`docker run -v `pwd`:`pwd` -w `pwd` -p 3000:8080 -i -t pedwink/pyroot-notebook`

and then access through localhost:3000 in your browser.

