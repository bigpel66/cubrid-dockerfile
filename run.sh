#!/bin/bash

USER=cubrid

echo 'export CUBRID=/home/$USER/CUBRID' >> /home/$USER/.bash_rc
echo 'export CUBRID_DATABASES=$CUBRID/databases' >> /home/$USER/.bash_rc
echo 'export CLASSPATH=$CUBRID/jdbc/cubrid_jdbc.jar' >> /home/$USER/.bash_rc
echo 'export LD_LIBRARY_PATH=$CUBRID/lib' >> /home/$USER/.bash_rc
echo 'export PATH=$CUBRID/bin:$PATH' >> /home/$USER/.bash_rc

source /home/$USER/.bash_rc

cd $CUBRID_DATABASES
mkdir demodb
cd demodb
cubrid createdb demodb ko_KR.utf8
cd

cubrid service start
cubrid server start demodb
