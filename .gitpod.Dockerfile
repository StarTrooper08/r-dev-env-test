FROM gitpod/workspace-full:latest

RUN apt update && apt -y install subversion

ENV BUILDDIR='/workspaces/r-dev-env/build'
ENV TOP_SRCDIR='/workspaces/r-dev-env/svn'
