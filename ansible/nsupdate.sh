echo "nsupdate << EOF" > nsupdate0.sh
grep ip lb.preprod.inventory.yml | awk '{ print $3 " " $4 }' | awk -F= '{ print "update add "$3".cyberfiltre.ms.fcm 86400 A "$2 }'| sed -e "s/vip_name//" >> nsupdate0.sh
echo "send" >> nsupdate0.sh
echo "EOF" >> nsupdate0.sh
chmod +x nsupdate0.sh
./nsupdate0.sh
