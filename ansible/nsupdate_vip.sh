nsupdate << EOF
update add it-cbf-pm-lb.cyberfiltre.ms.fcm 86400 A 192.168.102.245
update add it-cbf-int-prov-lb.cyberfiltre.ms.fcm 86400 A 192.168.102.243
update add it-cbf-sicap-lb.cyberfiltre.ms.fcm 86400 A 192.168.102.241
update add it-cbf-sicap-dc-lb.cyberfiltre.ms.fcm 86400 A 192.168.102.239
update add it-cbf-ns-lb.cyberfiltre.ms.fcm 86400 A 192.168.102.237
update add it-cbf-scapi-lb.cyberfiltre.ms.fcm 86400 A 192.168.101.235
update add it-cbf-sso-lb.cyberfiltre.ms.fcm 86400 A 192.168.101.233
update add it-cbf-ccapi-lb.cyberfiltre.ms.fcm 86400 A 192.168.101.231
update add it-cbf-bpapi-lb.cyberfiltre.ms.fcm 86400 A 192.168.101.229
update add it-cbf-saapi-lb.cyberfiltre.ms.fcm 86400 A 192.168.101.227
update add it-cbf-mrpm-lb.cyberfiltre.ms.fcm 86400 A 192.168.102.225
update add it-cbf-dov-m-lb.cyberfiltre.ms.fcm 86400 A 192.168.102.223
update add it-cbf-rep-lb.cyberfiltre.ms.fcm 86400 A 192.168.102.220
send
EOF
