#################################################################
# Dockerfile
#
# Version:          1.0
# Software:         tophat
# Software Version: 2.1.1
# Description:      Microbial pan-genome analysis and exploration toolkit
# Code:             https://github.com/neherlab/pan-genome-analysis
# Base Image:       debian:jessie
# Build Cmd:        sudo docker build -t debian_prokka:prokka_latest_docker1.0 .
# Pull Cmd:         docker pull debian_prokka:prokka_latest_docker1.0
# Run Cmd:          sudo docker run -it --rm -v /home:/home tophat_conda_docker:latest
# File Author / Maintainer: cheng gong <512543469@qq.com>
#################################################################

FROM continuumio/miniconda

RUN conda config --add channels defaults &&\
    conda config --add channels conda-forge &&\
    conda config --add channels r &&\
    conda config --add channels bioconda &&\
    conda update --all -y &&\
    conda install -y tophat=2.1.1

CMD ["/bin/bash"]


