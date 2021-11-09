FROM        centos:7

ENV         CUBRID_VERSION 11.0.4
ENV         CUBRID_BUILD_VERSION 11.0.4.0297-42780a3
ENV         USER cubrid

RUN         chmod -R 777 /tmp
RUN         yum install -y sudo procps wget glibc ncurses libgcrypt libstdc++
RUN         useradd -ms /bin/bash $USER
RUN         usermod -aG wheel $USER
RUN         echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN         su - $USER
RUN         wget -P /home/$USER http://ftp.cubrid.org/CUBRID_Engine/$CUBRID_VERSION/CUBRID-$CUBRID_BUILD_VERSION-Linux.x86_64.tar.gz
RUN         tar -zxf /home/$USER/CUBRID-$CUBRID_BUILD_VERSION-Linux.x86_64.tar.gz -C /home/$USER
RUN         mkdir -p /home/$USER/CUBRID/databases /home/$USER/CUBRID/var/CUBRID_SOCK
RUN         chmod -R 755 /home/$USER/CUBRID
RUN         chown -R $USER /home/$USER/CUBRID

COPY        run.sh /home/$USER
RUN         sudo chmod 755 /home/$USER/run.sh

VOLUME      /home/$USER/CUBRID/databases

EXPOSE      1523 8001

ENTRYPOINT  su - $USER
