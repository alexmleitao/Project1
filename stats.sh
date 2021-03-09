#!/bin/bash



variavel=$1
registados=registados
enfermeiros=enfermeiros
cidadaos=cidadaos

if [ "$variavel" == "$registados" ]
then 
cat cidadaos.txt | sort -r -k 3 | awk -F [:] '{
    if($3 > 60)
        {
            print $1" "$2
        }   
}'
exit 1 
fi

if [ "$variavel" == "$enfermeiros" ]
then 
cat enfermeiros.txt | awk  '{
    if($5 == 0)
        {
            print $1" "$2
        }   
}'
exit 1 
fi

if [ "$variavel" == "$cidadaos" ]
then 
cat cidadaos.txt | grep -i $2 | echo O número de cidadãos registados em $2 é $(wc -l)
exit 1 
fi









###############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos
##
## Aluno: Nº: 95257      Nome: Alexandre Leitao
## Nome do Módulo: stats.sh
## Descrição/Explicação do Módulo: 
##
##
###############################################################################

