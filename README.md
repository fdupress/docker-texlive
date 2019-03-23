# fdupress/texlive

![Docker Build
status](https://img.shields.io/docker/cloud/build/fdupress/texlive.svg)

An alpine image, with texlive-full and biber, available as
[fdupress/texlive](https://hub.docker.com/r/fdupress/texlive) on the Docker
Hub.

Extensions (including some not insignificant image size inflation) may be
possible, as required for my needs. PRs will be considered.

## More Information

Commands are run with uid 1000, in /home.
See the [source
Dockerfile](https://github.com/fdupress/docker-texlive/blob/master/Dockerfile)
for full build details.

## How to Use Me

Anywhere you would normally run, say, `latexmk <args>`, you can simply run
`docker run --rm -v $PWD:/home fdupress/texlive:latest latexmk <args>`. This
assumes that all files necessary for the run to complete are filed under the
current working director when you invoke the command.

In particular, your system-wide `.latexmkrc`, and any `.bib` databases loaded
from external paths will *not* be available for use by the container unless you
also mount/bind them. If running in a CI, it may be possible to git clone
relevant repositories under the working directory temporarily.
