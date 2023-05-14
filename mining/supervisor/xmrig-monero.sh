[program:xmrig-monero]
command=/opt/xmrig/xmrig -a rx/0  \
   -o de.monero.herominers.com:1111 --donate-level 1  --threads=4 \
  -u 48DWUzoTANZAMakwHVKqJq6JT3Ah2SfFC5i5nVrkFVREVaKcPet8hP9MPFapEveUCr3mLZCmnChUG7THLu7maDENLvsyaZZ \ 
  -k -p hpprodesk
autostart=true
autorestart=true
stderr_logfile=/var/log/xmrig-monero.err.log
stdout_logfile=/var/log/xmrig-monero.out.log