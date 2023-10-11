# Servicios
# 8000 -> Cartas
# 8001 -> Carrito
# 8002 -> Ldap
# 8003 -> Pagos
# 8004 -> Perfil
#sudo apt-get update
#sudo apt-get install -y ca-certificates curl gnupg
#sudo mkdir -p /etc/apt/keyrings
#curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
#NODE_MAJOR=20
#echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
#sudo apt-get update
#sudo apt-get install nodejs -y
#echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release -y
#sudo apt-get update
#sudo apt-get install docker-ce docker-ce-cli containerd.io -y
#sudo usermod -aG docker $USER
#sudo rm -rf /home/api/User_custom_ldap/
#git clone https://github.com/Edwin-DEV-py/User_custom_ldap
#git clone https://github.com/Edwin-DEV-py/ApiCartas
#git clone https://github.com/Edwin-DEV-py/shopping_cart
#git clone https://github.com/Edwin-DEV-py/perfil
#git clone https://github.com/Edwin-DEV-py/pasarela_pagos
cd /home/api/perfil
#git pull
nohup docker compose up &
cd /home/api/perfil/Perfil
nohup docker compose up &
cd /home/api/shopping_cart
#git pull
cd /home/api/shopping_cart/Cart/
nohup docker compose up &
cd /home/api/ApiCartas
#git pull
cd /home/api/ApiCartas/ApiCartas/
nohup docker compose up &
cd /home/api/User_custom_ldap/
#git pull
nohup docker compose up --remove-orphans &
cd /home/api/pasarela_pagos
#git pull
cd /home/api/pasarela_pagos/Pagos/
nohup docker compose up &