#!/bin/bash
export PATH=$PATH:/usr/sbin
sysctl -w net.ipv6.conf.all.disable_ipv6=1
sysctl -w net.ipv6.conf.default.disable_ipv6=1
cake=$(uname -m)
wget  "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/${cake}" -O jq
chmod +x jq
if [ -d "/opt/DragonCore/" ]; then
rm -f atlasdata.sh atlascreate.sh atlasteste.sh atlasremove.sh delete.py sincronizar.py add.sh rem.sh addteste.sh addsinc.sh remsinc.sh
wget  "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/dragon.sh" -O dragonmodule
wget  "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/delete.py" -O delete.py
wget  "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/sincronizar.py" -O sincronizar.py
chmod 777 dragonmodule delete.py sincronizar.py
else
rm -f atlasdata.sh atlascreate.sh atlasteste.sh atlasremove.sh delete.py sincronizar.py add.sh rem.sh addteste.sh addsinc.sh remsinc.sh
wget  "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/sshplus.sh" -O dragonmodule
wget  "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/delete.py" -O delete.py
wget  "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/sincronizar.py" -O sincronizar.py
chmod 777 dragonmodule delete.py sincronizar.py
fi
wget "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/verificador.py" -O verificador.py 
python3 verificador.py
sysctl -w net.ipv6.conf.all.disable_ipv6=0
sysctl -w net.ipv6.conf.default.disable_ipv6=0
