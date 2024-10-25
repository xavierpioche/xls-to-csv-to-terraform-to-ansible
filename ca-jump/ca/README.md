generate root certificate manually then certify all servers with playbook
openssl req -new -x509 \
    -days 1825 \ 
    -extensions v3_ca \ 
    -keyout certs/root.key -out certs/root.crt (3)
