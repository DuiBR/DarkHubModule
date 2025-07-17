#!/bin/bash
export PATH=$PATH:/usr/sbin

# Desativa IPv6 temporariamente
sysctl -w net.ipv6.conf.all.disable_ipv6=1
sysctl -w net.ipv6.conf.default.disable_ipv6=1

# Detecta arquitetura e baixa o jq correspondente
cake=$(uname -m)
wget "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/${cake}" -O jq
chmod +x jq

# Remove scripts antigos
rm -f atlasdata.sh atlascreate.sh atlasteste.sh atlasremove.sh delete.py sincronizar.py add.sh rem.sh addteste.sh addsinc.sh remsinc.sh

# Baixa os módulos atualizados
wget "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/sshplus.sh" -O dragonmodule
wget "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/delete.py" -O delete.py
wget "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/sincronizar.py" -O sincronizar.py
chmod 777 dragonmodule delete.py sincronizar.py

# Executa verificador
wget "https://raw.githubusercontent.com/DuiBR/DarkHubModule/main/verificador.py" -O verificador.py 
python3 verificador.py

# Reativa IPv6
sysctl -w net.ipv6.conf.all.disable_ipv6=0
sysctl -w net.ipv6.conf.default.disable_ipv6=0
