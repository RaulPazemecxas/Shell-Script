#!/bin/bash
# Atualizar a lista de pacotes
sudo apt update

# Instalar o Samba
sudo apt install samba -y

# Fazer backup do smb.conf original
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.original
echo "Iniciando..."
sleep 1

# Simular um processo demorado
sleep 5 &

# Exibir uma barra de carregamento simples
echo -n "Progresso: "
while [ "$(ps a | awk '{print $1}' | grep $!)" ]; do
    echo -n "#"
    sleep 0.1
done
echo ""

# Exibir uma mensagem e um Tux simplificado
echo "Concluído!"
cat << "EOF"

               .888888:.
               88888.888.       ..ooo00000oo..
              .8888888888    000000000000000000oo..       ..oo00
              8' `88' `888   0000''' |  /'''00000000000000000000
        HH    8 8 88 8 888   000     | /    00    \  ''00''  000
 HI     |H    8:.,::,.:888   000     |/     00     \ ________000
 HH,    |H   .8`::::::'888   000___    /|   00    /   \      000
 |HH,   |H   88  `::'  888   000  /   / |   00----____/      000
 | HH,  HH  .88        `888. 000 /   /  |   00   /    \      000
 |  YHHHHH.88'   .::.  .:8888.00..ooo0000oo.00  /      \     000
  \    YHH888.'   :'    `'88:88.0000000000000000oo..    \ ..o000
   \==/ .8888'    '        88:88.'  \  |  ''00000000000000000000
    == .8888H,    .        88:888    \ |    00    \   ''   / 000
       `8888HH,   :        8:888'     \|    00___  \  /   /  000
        `.:.8HH,  .       .::888'------o----00  /   \/   /___000
       .:::::88H  `      .:::::::.     /\   00 /             000
      .::::::.8         .:::::::::    /  \  00/    /|   |\   000
      :::::::::..     .:::::::::'..oo00oo.. 00  /|/ |   | \  000
       `:::::::::88888:::::::'00000000000000000oo.. |   | ..oo00
          rs`:::'       `:'  000'''      '''00000000000000000000
                                                   ''00''



EOF
echo ""
echo "RAUL PAZEMÉCXAS DE ANDRADE | LINKEDIN: /raulpazemecxas"

sleep 4 
# Criar um novo smb.conf
sudo cat <<EOF > /etc/samba/smb.conf
[global]
   workgroup = WORKGROUP
   security = user
   map to guest = Bad User
   guest account = nobody
   dns proxy = no

[homes]
   comment = Home Directories
   browseable = no
   read only = no
   create mask = 0700
   directory mask = 0700
   valid users = %S
EOF

# Reiniciar o serviço Samba
sudo systemctl restart smbd
echo ""
echo ""
echo "Configuração do Samba concluída."
echo ""
echo ""
echo "Realizando a configuração para inicialização do serviço junto ao sistema.. =D"
echo ""
echo "Iniciando..."
sleep 3

# Simular um processo demorado
sleep 8 &

# Exibir uma barra de carregamento simples
echo -n "Progresso: "
while [ "$(ps a | awk '{print $1}' | grep $!)" ]; do
    echo -n "#"
    sleep 0.1
done
echo ""

# Exibir uma mensagem e um Tux simplificado
echo "Concluído!"
echo ""
# Insere o link simbolico no diretorio targes do runlevel multiuser do Systemd
cd /lib/systemd/system/
echo ""
echo "Existem esses apontamentos de bibliotecas para criação no targets" 
ls *smb* -ltrah 
sleep 3
sleep 1

# Simular um processo demorado
sleep 5 &

# Exibir uma barra de carregamento simples
echo -n "Progresso: "
while [ "$(ps a | awk '{print $1}' | grep $!)" ]; do
    echo -n "#"
    sleep 0.5
done
echo ""

# Exibir uma mensagem e um Tux simplificado
echo "Concluído!"
echo ""
echo ""
echo "Realizando a crição dos links simbolicos..."
echo ""
echo "Iniciando..."
sleep 4

# Simular um processo demorado
sleep 5 &

# Exibir uma barra de carregamento simples
echo -n "Progresso: "
while [ "$(ps a | awk '{print $1}' | grep $!)" ]; do
    echo -n "#"
    sleep 1.0
done
echo ""

# Exibir uma mensagem e um Tux simplificado
echo "Concluído!"
echo ""
echo "Entrando no runlevel multiusuario grafico e configurando a inicialização no mesmo"
ln -s /lib/systemd/system/smb.service /etc/systemd/system/multi-user.target.wants/smb.service
echo ""
echo "Esse é o apontamento para o diretorio targets de inicialização:"
echo ""
ls -ltrah /etc/systemd/system/multi-user.target.wants/smb.service
echo ""
sleep 1

# Simular um processo demorado
sleep 6 &

# Exibir uma barra de carregamento simples
echo -n "Progresso: "
while [ "$(ps a | awk '{print $1}' | grep $!)" ]; do
    echo -n "#"
    sleep 2.0
done
echo ""

# Exibir uma mensagem 
echo "Concluído!"

cat<<"EOF"
  #
  #
                                                                 #####
                                                                ###### 
								######                #                                            ##O#O##
  ######          ###                                           #VVVVV#
    ##             #                                          ##  VVV  ##
    ##         ###    ### ####   ###    ###  ##### #####     #          ##
    ##        #  ##    ###    ##  ##     ##    ##   ##      #            ##
    ##       #   ##    ##     ##  ##     ##      ###        #            ###
    ##          ###    ##     ##  ##     ##      ###       QQ#           ##Q
    ##       # ###     ##     ##  ##     ##     ## ##    QQQQQQ#       #QQQQQQ
    ##      ## ### #   ##     ##  ###   ###    ##   ##   QQQQQQQ#     #QQQQQQQ
  ############  ###   ####   ####   #### ### ##### #####   QQQQQ#######QQQQQ
  #
  #
  #
  #
  #
  #
  #
  #raul pazemecxas de andrade
EOF
sleep 2
echo ""
echo "Muito obrigado =)"
