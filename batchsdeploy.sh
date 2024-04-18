#!/bin/bash
#######################################################################################################
# Descricao : Deploy de binários batchs Acqr
#               IMPORTANTE: antes de entrar com o owner pelo menu, dar permissão chmod 777 no binarios com seu owner pessoal.
#
# Exemplo de execucao, após ter logao ao ownerda instancia, com o menu
# "./batchsdeploy.sh acqr acqr 01"      ou       "./batchsdeploy.sh issr issr 01"  (01, 02, 03, 04, 05, 06, 07, 08, 09 ou 10)
#                         /appl/CMS/cmsacqr09/CMS/bin
# Data      : 02/04/2024
# Autor     : Rodolfo Ferraz
# Alteracao :
#######################################################################################################


INSTANCIA1=$1
INSTANCIA2=$2
INSTANCIA3=$3


(cd /tmp/deploy/$INSTANCIA1;
cp * /appl/CMS/cms$INSTANCIA2$INSTANCIA3/CMS/bin)

