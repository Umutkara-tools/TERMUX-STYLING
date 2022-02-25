#!/bin/bash
clear
if [[ -a $HOME/.termux ]];then
	rm -rf $HOME/.termux
fi
mv termux $HOME/.termux
echo "#!/bin/bash\ncd $HOME/.termux\nbash termux-styling.sh $1" > $PREFIX/bin/termux-styling
cd ..
rm -rf TERMUX-STYLING

