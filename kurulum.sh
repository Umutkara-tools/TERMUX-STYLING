#!/bin/bash
clear

# FİSH  PAKET KONTROLÜ #

if [[ ! -a $PREFIX/bin/fish ]];then
	echo
	echo
	echo
	printf "\e[32m[✓]\e[97m FİSH PAKETİ KURULUYOR"
	echo
	echo
	echo
	pkg install fish -y
fi

# ZSH  PAKET KONTROLÜ #

if [[ ! -a $PREFIX/bin/zsh ]];then
	echo
	echo
	echo
	printf "\e[32m[✓]\e[97m ZSH PAKETİ KURULUYOR"
	echo
	echo
	echo
	pkg install zsh -y
fi

# COWSAY  PAKET KONTROLÜ #

if [[ ! -a $PREFIX/bin/cowsay ]];then
	echo
	echo
	echo
	printf "\e[32m[✓]\e[97m COWSAY PAKETİ KURULUYOR"
	echo
	echo
	echo
	pkg install cowsay -y
fi

# NEOFETCH  PAKET KONTROLÜ #

if [[ ! -a $PREFIX/bin/neofetch ]];then
	echo
	echo
	echo
	printf "\e[32m[✓]\e[97m NEOFETCH PAKETİ KURULUYOR"
	echo
	echo
	echo
	pkg install neofetch -y
fi

# LOLCAT PAKET KONTROLÜ #

if [[ ! -a $PREFIX/bin/lolcat ]];then
	echo
	echo
	echo
	printf "\e[32m
	╔═══════════════════════╗
	║ ✓ \e[97mLOLCAT KURULUYOR..  \e[32m║
	╚═══════════════════════╝\e[97m"
	echo
	echo
	echo
	pkg install ruby -y
	gem install lolcat
fi

if [[ -a $HOME/.termux ]];then
	rm -rf $HOME/.termux
fi

if [[ -a $PREFIX/share/cows ]];then
	cp termux/files/cows/* $PREFIX/share/cows
	chmod 777 $PREFIX/share/cows/*
fi
cp termux/zshrc $HOME/.zshrc

mv termux $HOME/.termux
echo -e "#!/bin/bash\ncd $HOME/.termux\nbash termux-styling.sh $1" > $PREFIX/bin/termux-styling
chmod 777 $PREFIX/bin/termux-styling
chmod 777 $HOME/.termux/termux-styling.sh
echo "zsh" >> /data/data/com.termux/files/usr/etc/bash.bashrc
if [[ -a /data/data/com.termux/files/usr/etc/motd ]];then
	rm /data/data/com.termux/files/usr/etc/motd
fi

cd ..
rm -rf TERMUX-STYLING

echo
echo
echo
echo
printf "\e[32m
\t\t╔════════════════════════╗
\t\t║                        ║
\t\t║   \e[97mＫＵＲＵＬＵＭ\e[32m       ║
\t\t║                        ║
\t\t║   \e[97mＴＡＭＡＭＬＡＮＤＩ\e[32m ║
\t\t║                        ║
\t\t╚════════════════════════╝
\n\n\e[97m"
sleep 1

echo
echo
echo
printf "\e[32m
\t\t╔═════════════════════════════════════╗
\t\t║ \e[97mÇALIŞTIRMAK İÇİN \e[32mtermux-styling \e[97mYAZ \e[32m║
\t\t╚═════════════════════════════════════╝\e[97m"
echo
echo
echo
termux-reload-settings
