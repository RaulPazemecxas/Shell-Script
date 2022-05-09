#!/bin/bash

cat <<"EOF"

Raul Pazemécxas de Andrade
GitHub: RaulPazemecxas
Linkedin:linkedin.com/in/raul-pazem%C3%A9cxas-04882b21a/

             d888888b.
             8P"YP"Y88
             8|o||o|88
             8' .88
             8`._.' Y8.
            d/'8b.
          .dP . Y8b.
         d8:' " `::88b.
        d8" `Y88b
       :8P ' :888
        8a. : _a88P
      ._/"Yaa_ : .| 88P|
     \YP" `| 8P`.
      / \._____.d| .'
      `--..__)888888P`._.'
EOF

sleep 5
echo "Seja bem-vindo ao programa de monitoração em tempo real de conexões"
echo ""
echo "Os IP's locais são:"

hostname -I
sleep 1
echo ""
echo "Informações sobre o servidor:"
uname -a
sleep 5 
echo "Monitorando as portas......."
echo ""
sleep 4
watch netstat -tulpn
 

