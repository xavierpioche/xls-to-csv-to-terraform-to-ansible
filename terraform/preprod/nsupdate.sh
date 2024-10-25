echo "nsupdate << EOF" > nsupdate0.sh
./output.sh  | sed -e "s/=/ /"| awk '{ print "update add "$1".cyberfiltre.ms.fcm 86400 A "$3 }' >> nsupdate0.sh
echo "send" >> nsupdate0.sh
echo "EOF" >> nsupdate0.sh
chmod +x nsupdate0.sh
./nsupdate0.sh
