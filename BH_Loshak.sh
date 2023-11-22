#!/bin/bash
echo "Program for work with checksum MD5" 
echo "Developer: Loshak Ivan" 
pwd
readlink -f $(ls | sed -n '1p')
md5sum $(ls | sed -n '1p')
readlink -f $(ls | sed -n '2p')
if [ $(stat -c%s $(ls | sed -n '2p')) -eq 0 ];
then printf $(md5sum $(ls | sed -n '1p')) > $(readlink -f $(ls | sed -n '2p'))
echo "Data in file " $(ls | sed -n '2p') ": " $(cat $(readlink -f $(ls | sed -n '2p')))
else 
echo "Data in file " $(ls | sed -n '2p') ": " $(cat $(readlink -f $(ls | sed -n '2p'))) 
echo "You want rewrite file [Y/N]? Daefault No:"
read Ans;
if [ $Ans = "y" ];
then printf $(md5sum $(ls | sed -n '1p')) > $(readlink -f $(ls | sed -n '2p'))
echo "Data in file " $(ls | sed -n '2p') ": " $(cat $(readlink -f $(ls | sed -n '2p')))
elif [ $Ans = "Y" ];
then printf $(md5sum $(ls | sed -n '1p')) > $(readlink -f $(ls | sed -n '2p'))
echo "Data in file " $(ls | sed -n '2p') ": " $(cat $(readlink -f $(ls | sed -n '2p')))
else echo "You didn't rewrite file";
fi
fi

