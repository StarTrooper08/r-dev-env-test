FROM gitpod/workspace-full:latest

RUN apt update && \
    apt install -y subversion

ENV BUILDDIR='/workspaces/r-dev-env/build'
ENV TOP_SRCDIR='/workspaces/r-dev-env/svn'
