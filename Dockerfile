# Image operating system
FROM ubuntu:14.04 

#Set bash as shell
SHELL ["/bin/bash", "-c"]

# Install required packages
RUN apt-get -y update
RUN apt-get install -y qemu linux-headers-generic build-essential

# Directory where our program will be executed
WORKDIR /pint-os

#Copy contents of current folder to container directory
COPY ./pintos/src/ /pint-os


# Enviromental Variables 
ENV PINTOS_HOME=/pint-os 
ENV GDB_MACROS=${PINTOS_HOME}/misc/gdb-macros
ENV PATH=$PINTOS_HOME/utils:${PATH}




