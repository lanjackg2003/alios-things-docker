FROM ubuntu
MAINTAINER jack <lanjackg2003@qq.com>
RUN sed -i 's/archive.ubuntu.com/mirrors.sohu.com/g' /etc/apt/sources.list
RUN apt-get update
COPY setup_linux_osx.sh /setup_linux_osx.sh
RUN /setup_linux_osx.sh -y
RUN useradd -d /home/alios -m -s /bin/bash alios
RUN echo "linuxidc ALL=NOPASSWD:ALL" >  /etc/sudoers
RUN chmod 0440 /etc/sudoers 
WORKDIR /home/alios
USER alios
ENV PATH $PATH:/root/.local/bin
CMD ["/bin/bash"]
