#!/bin/zsh

#Menu de apresentacao
echo "Seja bem-vindo a ferramenta de administracao de usuarios!..."
sleep 2



#Realiza a contagem de usuarios, grupos e objetos, sendo os objetos a soma de usuarios e grupos.

	function contagem_de_objetos(){
		G=$(wc -l /etc/group | cut -d" " -f1)
		U=$(wc -l /etc/passwd | cut -d " " -f1)
		echo "O sistema possui $G gryoos!"
		echo "O sistema possui $U usuarios!"
		echo "Quantidade de objetos no sistema:" $(($G+$U))
}
#Chamando a funcao no bash.
date
echo ""
contagem_de_objetos

