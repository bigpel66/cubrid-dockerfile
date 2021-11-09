#!/bin/bash

USER=cubrid

echo 'export CUBRID=/home/$USER/CUBRID' >> ~/.bash_rc
echo 'export CUBRID_DATABASES=$CUBRID/databases' >> ~/.bash_rc
echo 'export CLASSPATH=$CUBRID/jdbc/cubrid_jdbc.jar:$CLASSPATH' >> ~/.bash_rc
echo 'export LD_LIBRARY_PATH=$CUBRID/lib:$LD_LIBRARY_PATH' >> ~/.bash_rc
echo 'export PATH=$CUBRID/bin:$PATH' >> ~/.bash_rc

source ~/.bash_rc

cd $CUBRID_DATABASES
mkdir demodb
cd demodb
cubrid createdb demodb ko_KR.utf8

cubrid service start

cd
