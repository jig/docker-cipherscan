cat >> /etc/ssl/certs/ca-certificates.crt
./cipherscan --curves https://myid.devops.safelayer.io
./analyze.py -t https://myid.devops.safelayer.io