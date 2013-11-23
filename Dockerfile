FROM ubuntu:12.10
MAINTAINER Patrick O'Doherty <p@trickod.com>

RUN apt-get update
RUN apt-get install -y build-essential python-dev python-setuptools gfortran libblas-dev libatlas-dev liblapack-dev
RUN easy_install pip
RUN pip install --upgrade distribute

RUN pip install numpy==1.7.1
RUN pip install scipy==0.12.0
RUN pip install honcho
