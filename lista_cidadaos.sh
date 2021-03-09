#!/bin/bash

## Store to a shell variable ##
myyear=`date +'%Y'`



# cat listagem.txt | awk -F "[|:-]" '{datefile=$6; age=$myyear-$datefile; print(NR) + 10000":"$2":"age":"$8":"$10":"0}'


cat listagem.txt | awk -F "[|:-]" '{print(NR) + 10000":"$2":"2021-$6":"$8":"$10":"0}' > cidadaos.txt



###############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos
##
## Aluno: Nº:       Nome: 
## Nome do Módulo: lista_cidadaos.sh
## Descrição/Explicação do Módulo: 
##
##
###############################################################################

