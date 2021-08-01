#!/bin/bash


start(){
	clear
	echo -e "
        ________________________________________
        |
        |    THEOSFORUM.ORG \e[37m\e[31m
        |
        |    Coder     : Apathe\e[37m\e[31m
        |
        |    Instagram : Ap4the\e[37m\e[31m
        |
        |    GitHub    : Ap4the\e[37m\e[31m
	|
	|    Version   : 3.2\e[37m\e[31m
        |
        |_______________________________________\n\n\n"
	
	
	rm -rf ../apathe-wordlist/wordlist.txt
	rm -rf wordlist.txt
	cd Lib/ && rm -rf kayit.php
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Adı : ' adi
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Soyadı : ' soyad
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Doğum Tarihi : ' dogumtarih
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Doğum Yılı : ' dogumyilii
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Lakabı : ' lakapi
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Anne Adı : ' annei
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Baba Adı : ' babai
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Kardeş Adı : ' kardesi
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Sevgilisinin Adı : ' sevgilii
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Sevgilsinin Soyadı : ' sevsoyad
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Sevgilisi İle Çıkma Tarihi : ' sevtarih
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Sevgilisi İle Çıkma Yılı : ' sevyil
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Şehir : ' sehiri
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Plaka : ' plaka
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Tuttuğu Takım : ' takimi
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Kısa Adı (gs,fb,bjk) : ' kisatakim
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Takımın Kuruluş Yılı : ' takimyil
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Telefon Numarası : ' numara
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Annesinin Telefon Numarası : ' anneteli
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Babasının Telefon Numarası : ' babateli
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Kardeşinin Telefon Numarası : ' kardesteli
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Sevgilisinin Telefon Numarası : ' sevtel
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Kurbanın TC Kimlik Numarası : ' tcno
	read -p $'\e[31m[\e[32m#\e[31m]\e[37m Eski Şifresi : ' eskisifrei

	
	echo "
	<?php
	\$ad = '$adi';
	\$soyadad = '$soyad';
	\$lakap = '$lakapi';
	\$anne = '$annei';
	\$baba = '$babai';
	\$kardes = '$kardesi';
	\$sevgili = '$sevgilii';
	\$sevgilisoyad = '$sevsoyad';
	\$dogumtarihi = '$dogumtarih';
	\$dogumyili = '$dogumyilii';
	\$cikmayili = '$sevyil';
	\$cikmatarihi = '$sevtarih';
	\$sehir = '$sehiri';
	\$takim = '$takimi';
	\$takimtarihi = '$takimyil';
	\$takimkisa = '$kisatakim';
	\$plaka = '$plaka';
	\$eskisifre = '$eskisifrei';
	\$tel = '$numara';
	\$annetel = '$anneteli';
	\$babatel = '$babateli';
	\$kardestel = '$kardesteli';
	\$sevgilitel = '$sevtel';
	\$tckimlikno = '$tcno';?>" >> kayit.php 

	php olanak-list.php
	php ad-list.php
	php anne-list.php
	php annetel-list.php	
	php baba-list.php
	php babatel-list.php
	php cikmatarihi-list.php
	php cikmayili-list.php
	php dogumyili-list.php
	php eskisifre-list.php
	php kardes-list.php
	php kardestel-list.php
	php lakap-list.php
	php plaka-list.php
	php sehir-list.php
	php sevgili-list.php
	php sevgilisoyad-list.php
	php sevgilitel-list.php
	php soyad-list.php
	php takim-list.php
	php takimkisa-list.php
	php takimtarihi-list.php
	php tckimlikno-list.php
	php tel-list.php

	echo -e '\e[32mWordlistiniz Yolu : \e[37mwordlist.txt'



}

if [[ -e "Lib/ok.txt" ]]; then

	if [[ -e "wordlist.txt" ]]; then
		clear
		read -p $'\e[31m[\e[32m!\e[31m]\e[37mDaha önce oluşturduğunuz bir wordlist mevcut!\nYeni bir wordlist oluşturmak ister misiniz? [E,H] : ' yeni
		if [[ $yeni == "E" || $yeni == "e" ]]; then					
			start
		elif [[ $yeni == "H" || $yeni == "h" ]]; then
			clear
			echo -e "Hayır'ı seçtiniz. Eski Wordlist kullanılmaya devam edicek."
		else
			clear
			echo -e "Lütfen (E ,'Evet')  (H ,'Hayır') seçeneklerinden birini seçiniz! "
			sleep 3
			bash start.sh	
		fi
	else
		start	
	fi
else 
apt install php -y 
clear
cd Lib/
echo "Bu Tool Apathe Tarafından Kodlandı...." >> ok.txt
rm -rf /$HOME/apathe-bruteforce/apathe-bruteforce/install.py
rm -rf /$HOME/apathe-bruteforce/apathe-bruteforce/requirements.txt
fi
