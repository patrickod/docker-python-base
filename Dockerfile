FROM ubuntu:12.10
MAINTAINER Patrick O'Doherty <p@trickod.com>

RUN apt-get update
RUN apt-get install -y build-essential python-dev python-setuptools gfortran libblas-dev libatlas-dev liblapack-dev
RUN easy_install pip
RUN pip install --upgrade distribute

RUN apt-get install -y python-numpy

RUN pip install scipy==0.12.0
RUN pip install honcho
