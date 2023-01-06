FROM ubuntu:22.10

# Update the package repository
RUN apt update

# Install required dependencies
RUN apt-get install -y make gcc flex bison

# Create the main directory in which we'll build and then run the program
RUN mkdir -p /main
WORKDIR /main

# Copy everything to the working dir
COPY ./ /main

RUN make

SHELL ["/bin/bash", "-c"]
