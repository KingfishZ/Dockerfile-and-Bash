#!/bin/bash
echo "Program for work with checksum MD5" 
echo "Developer: Loshak Ivan" 
pwd
while true
do
echo "Enter first file:"
read f1
if !([ -f $f1 ]);
then echo "This file not exit"
break
fi
md5sum $f1
echo "Enter second file:"
read f2
if !([ -f $f2 ]);
then echo "This file not exit"
break
fi
if [ $(stat -c%s $f1) -eq 0 ];
then printf $(md5sum $f1) > $f2
echo "Data in file " $f2 ": " $(cat $f2)
else 
echo "Data in file " $f2 ": " $(cat $f2) 
echo "You want rewrite file [Y/N]? Daefault No:"
read Ans;
if [ $Ans = "y" ];
then printf $(md5sum $f1) > $f2
echo "Data in file " $f2 ": " $(cat $f2)
elif [ $Ans = "Y" ];
then printf $(md5sum $f1) > $f2
echo "Data in file " $f2 ": " $(cat $f2)
else echo "You didn't rewrite file";
fi
fi
echo "You want generate checksum again? [Y/N]. Default N";
read AnsW
if [ AnsW = "y"];
then echo "You generate new checksum";
elif [ AnsW = "y"];
then echo "You generate new checksum";
else echo "Stop pragramm"
break
fi
done

