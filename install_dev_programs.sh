#!/bin/bash

# LINK_MENDELEY=https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
# LINK_CODE=https://go.microsoft.com/fwlink/?LinkID=760868
# LINK_XAMPP=https://www.apachefriends.org/xampp-files/5.6.15/xampp-linux-x64-5.6.15-1-installer.run
# CLION=https://download.jetbrains.com/cpp/CLion-2016.2.2.tar.gz
# INTELLIJ=https://download.jetbrains.com/idea/ideaIU-2016.2.5.tar.gz
# PYCHARM=https://download.jetbrains.com/python/pycharm-professional-2016.2.3.tar.gz
# RUBY_MINE=https://download.jetbrains.com/ruby/RubyMine-2016.2.4.tar.gz

OUT_DIR=~/local
TEMP_DIR=./tmp

mkdir $OUT_DIR
mkdir $TEMP_DIR
rm -rf $TEMP_DIR/*

printf "\n---> Installing Screen\n"
sudo apt-get -y install screen

printf "\n---> Installing Java JDK\n"
sudo add-apt-repository -y ppa:linuxuprising/java
sudo apt update
sudo apt install -y oracle-java14-installer oracle-java14-set-default

printf "\n---> Installing VIM\n"
sudo apt-get -y install vim

printf "\n---> Installing Cmake\n"
sudo apt-get -y install cmake

printf "\n---> Installing Clang\n"
sudo apt-get -y install clang

printf "\n---> Color on GCC and g++\n"
sudo apt-get -y install colorgcc
sudo ln -s /usr/bin/colorgcc /usr/local/sbin/g++
sudo ln -s /usr/bin/colorgcc /usr/local/sbin/gcc

printf "\n---> Installing g++\n"
sudo apt-get -y install g++

printf "\n---> Installing Doxygen\n"
sudo apt-get -y install doxygen

printf "\n---> Installing Lib PNG\n"
sudo apt-get -y install libpng-dev

printf "\n---> Installing ZLib\n"
sudo apt-get -y install zlib1g-dev

printf "\n---> Installing SVN\n"
sudo apt-get -y install subversion

printf "\n---> Installing Htop\n"
sudo apt-get -y install htop

printf "\n---> Installing Atlas, Lapack, and Blas\n"
sudo apt-get -y install liblapack-dev libblas-dev libatlas-base-dev

printf "\n---> Installing Atlas, Lapack, and Blas\n"
sudo apt-get -y install python3-venv
python3 -m venv ~/yeah
source ~/yeah/bin/activate
printf "\n\nsource ~/yeah/bin/activate" >> ~/.bashrc

printf "\n---> Installing VS Code\n"
# wget $LINK_CODE -O $TEMP_DIR/code.deb
# sudo dpkg -i $TEMP_DIR/code.deb
# sudo apt-get -y -f install


printf "\n##########################################################\n"

rm -rf $TEMP_DIR

