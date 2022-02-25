#!/bin/bash
clear
if [[ -a $HOME/.termux ]];then
	rm -rf $HOME/.termux
fi
mv termux $HOME/.termux
echo -e "#!/bin/bash\ncd $HOME/.termux\nbash termux-styling.sh $1" > $PREFIX/bin/termux-styling
chmod 777 $PREFIX/bin/termux-styling
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
exit

