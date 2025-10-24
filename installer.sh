#!/bin/bash

#AUTHOR: VENOM24
#DATA: 14/08/2019
#VARIABLES
                red='\033[1;31m'
                green='\033[1;32m'
                yellow='\033[1;33m'
                blue='\033[1;34m'
                magenta='\033[1;35m'
                cyan='\033[1;36m'                   
		reset='\033[0m'
clear
echo -e "\e[1;31m  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■"
echo
echo -e "\e[1;36m    R|O|U|T|E|R|S|P|L|O|I|T| |E|N| |T|E|R|M|U|X|"
echo 
echo -e "\e[1;36m    A|U|T|H|O|R| |V|E|N|O|M|2|4|"
echo
echo -e "\e[1;31m  ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■"
sleep 2.5
echo
echo




#instalando paquetes de termux
printf $cyan
echo "      #####ACTUALIZANDO SISTEMA DE LINUX#####"
sleep 2.5
printf $reset
apt update -y && apt upgrade -y
apt install autoconf automake bison bzip2 clang cmake coreutils diffutils flex gawk git grep gzip libtool make patch perl sed silversearcher-ag tar wget pkg-config python clang libcrypt libffi git openssl libsodium -y
python -m pip install wheel
SODIUM_INSTALL=system pip install pynacl

#instalando dependencias de python
printf $cyan
echo "       ####INSTALANDO DEPENDENCIAS DE PYTHON####"
sleep 2.5
printf $reset
pkg install python-cryptography
pkg install python-bcrypt
pip install setuptools
pip install requests
pip install paramiko
pip install crypto
pip install pycryptodome

# mv paramiko paramiko-stubs paramiko-3.5.1.egg-info $PREFIX/lib/python3.12

cd
ls
printf $cyan
echo     "         ####INSTALANDO ROUTERSPLOIT####"
sleep 2.5
printf $reset
git clone https://github.com/threat9/routersploit

printf $cyan
echo     "         ####CONFIGURANDO ROUTERSPLOIT####"
sleep 2.5
printf $reset
cd $HOME/routersploit
ls
python3 -m pip install -r requirements.txt
python -m pip install -r requirements-dev.txt

chmod +x setup.py
python  setup.py install 

python rsf.py                                       



