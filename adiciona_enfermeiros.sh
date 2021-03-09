#!/bin/bash






#if [ $1 -z ""] || [ $2 -z "" ] ||  [$3 -z ""] || [ $4 -z ""] || [ $5 -n ]
#then
#echo Por favor insira os dados da seguinte forma: <nome> <nº de cédula profissional> <centro de saúde associado> <“CS”Localidade> <disponibilidade (0 – indisponível, 1 – disponível)>
#fi





file=./enfermeiros.txt
numeroenfermeiro=$3
localidade=$4



cmd1=$(grep -ci "$numeroenfermeiro" $file)
cmd2=$(grep -ci "$localidade" $file)

if [ "$cmd2" != "0" ]
then 
echo Já existe um enfermeiro associado ao Centro de Saúde inserido
exit 1
fi
    
if [ "$cmd1" != "0" ]
then 
echo Enfermeiro/a já existe na base de dados
exit 1
else
echo $1:$2:$3:$4:$5 >> enfermeiros.txt
cat enfermeiros.txt
fi




















###############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos
##
## Aluno: Nº:       Nome: 
## Nome do Módulo: adiciona_enfermeiros.sh
## Descrição/Explicação do Módulo: 
##
##
###############################################################################

