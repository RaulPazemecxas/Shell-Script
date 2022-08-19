#!/bin/bash

echo "Seja bem-vindo ao script de automações! Selecione a opção desejada: "

x="teste"

menu ()
{
while true $x != "teste"
do
clear
echo "================================================"

cat << EOF

    
                88888888.88888.
              .8888888888888888.
              888888888888888888
              88' _`88'_  `88888
              88 88 88 88  88888
              88_88_::_88_:88888
              88:::,::,:::::8888
              88`:::::::::'`8888
             .88  `::::'    8:88.
            8888            `8:888.
          .8888'             `888888.
         .8888:..  .::.  ...:'8888888:.
        .8888.'     :'     `'::`88:88888
       .8888        '         `.888:8888.
      888:8         .           888:88888
    .888:88        .:           888:88888:
    8888888.       ::           88:888888
    `.::.888.      ::          .88888888
   .::::::.888.    ::         :::`8888'.:.
  ::::::::::.888   '         .::::::::::::
  ::::::::::::.8    '      .:8::::::::::::.
 .::::::::::::::.        .:888:::::::::::::
 :::::::::::::::88:.__..:88888:::::::::::'
  `'.:::::::::::88888888888.88:::::::::'
       `':::_:' -- '' -'-' `':_::::'`


LINKEDIN: ## https://www.linkedin.com/in/raul-pazem%C3%A9cxas-04882b21a/ ##

GITHUB: RaulPazemecxas

EOF

echo "================================================"

sleep 5
clear

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

echo ""
echo "================================================"
echo "1) Adicionar usuário ao grupo de sudo."
echo "================================================"
echo ""

echo ""
echo "================================================"
echo "2) Remover um pacote."
echo "================================================"
echo ""

echo ""
echo "================================================"
echo "3) Atualizar completamente o kernel Linux."
echo "================================================"
echo ""

echo ""
echo "================================================"
echo "4) Instalar dependências."
echo "================================================"
echo ""

echo ""
echo "================================================"
echo "5) Limpando programas defeituosos."
echo "================================================"
echo ""

echo ""
echo "================================================"
echo "6) Corrigir erros."
echo "================================================"
echo ""

echo ""
echo "================================================"
echo "7) Sair do programa"
echo "================================================"
echo ""

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

echo "Digite a opção desejada: "
read x
echo "Opção informada: ($x)"

echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

case "$x" in


    1)
       echo "Digite o nome do usúario a ser colocado no sudoers: " 
       read user_sudoers;
       sudo su
       usermod -aG sudo $user_sudoers 
       sleep 5

echo "O usuário $user_sudoers foi adicionado ao grupo de sudo"

echo "================================================"
;;
    2)
      echo "Informe o nome do pacote para ser removido: "
      read nome
      apt-get remove --purge $nome
      sleep 5
      echo ""
      echo "Pacote ($nome) removido!"

echo "================================================"
;;
   3)
      echo "Iniciando atualização total do kernel Linux..."
      sudo apt-get update && sudo apt-get dist-full-upgrade
      sleep 5
      uname 

echo "================================================"
;;
    4)
       echo "Iniciando o processo..."
       apt-get -f install
       sleep 5

echo "================================================"
;;
     5)
       echo "Corrigindo erros..."
       apt-get autoremove
       sleep 5

echo "================================================"
;;
    6)
    echo "Reparando..."
    dpkg --configure -a
    sleep 5

echo "================================================"
 ;;
       7)
         echo "Encerrando..."
         sleep 5
         clear;
         exit;

echo "================================================"
;;

*)
        echo "Opção inválida!"
esac
done

}
menu
