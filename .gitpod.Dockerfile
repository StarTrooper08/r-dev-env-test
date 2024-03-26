FROM gitpod/workspace-full:latest

ENV BUILDDIR='/workspaces/r-dev-env/build'
ENV TOP_SRCDIR='/workspaces/r-dev-env/svn'

RUN sudo apt update \
    && apt -y install subversion

