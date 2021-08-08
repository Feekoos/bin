#!/usr/local/bin/bash


declare -A HOST_DOMAIN_ARRAY=( [test]='feekoos.one' [@]='feekoos.one' [www]='feekoos.one' [nextcloud]='feekoos.one' [piwigo]='feekoos.one' [lychee]='feekoos.one' [zenphoto]='feekoos.one' )
PASSWORD='76e0a04041024e0bb2e5c91569635dcc'
FILE=/usr/home/fikus/log/public_ip.txt

if test -f "$FILE"; then
	OLD_IP=$(cat $FILE)
	echo "$FILE exists."
	echo "Old IP was:    $OLD_IP"
fi

IP=$(wget -qO - http://wtfismyip.com/text)
echo "Current IP is: $IP"

if [ $IP != $OLD_IP ]
then
	for i in ${!HOST_DOMAIN_ARRAY[@]}; do
		j=${HOST_DOMAIN_ARRAY[$i]}
		echo 'wget -q -O- https://dynamicdns.park-your-domain.com/update?domain='$j'&host='$i'&password='$PASSWORD'&ip='$IP
		wget -q -O- 'https://dynamicdns.park-your-domain.com/update?domain='$j'&host='$i'&password='$PASSWORD'&ip='$IP
		echo $IP >$FILE
		echo "IP changed and reported!"
	done
else
	echo "IP didn't change."
fi
