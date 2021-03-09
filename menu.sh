echo Seleccione uma das Opções:
echo ""
echo 1. Listar Cidadãos
echo ""
echo 2. Adicionar enfermeiro
echo ""
echo 3. Stats
echo ""
echo 4. Agendar Vacinação
echo ""
echo 5. Sair
echo ""
read opcao
case $opcao in 
1) ./lista_cidadaos.sh ;;
2) ./adiciona_enfermeiros.sh ;;
3) ./stats.sh ;;
4) ./agendamento.sh ;;
0) exit ;;
*) echo Por favor Seleccione uma opção válida
echo ""
./menu.sh ;;
esac 













###############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos
##
## Aluno: Nº:       Nome: Alexandre Leitao
## Nome do Módulo: menu.sh
## Descrição/Explicação do Módulo: 
##
##############################################################################

