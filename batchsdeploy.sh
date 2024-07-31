#!/bin/bash
#######################################################################################################
# Descricao : Deploy de binários batchs Acqr
# Local de execução: cd /tmp/deploy/           
# Exemplo de execucao (após ter logado ao owner da instancia com o menu dos ambientes):
# cd /tmp/deploy/
# "./batchsdeploy.sh acqr acqr 01" 	ou	 "./batchsdeploy.sh issr 01"  (01, 02, 03, 04, 05, 06, 07, 08, 09 ou 10)
# 			  /appl/CMS/cmsacqr09/CMS/bin
# Data: 02/04/2024
# Autor: Rodolfo Ferraz
# Alteracao: 14/06/2024
#######################################################################################################

nomeshell="batchsdeploy"
DataHora=$(date "+%Y%m%d%H%M%S")
caminhoShell=/tmp/deploy
caminhoLog=/tmp/deploy/logs/
arquivoLog="${caminhoLog}${nomeshell}.${DataHora}.log"

INSTANCIA1=$1
INSTANCIA2=$2

cd /tmp/deploy/$INSTANCIA1

# Copia os arquivos para o destino
cp * /appl/CMS/cms$INSTANCIA1$INSTANCIA2/CMS/bin >>$arquivoLog 2>&1

cd /appl/CMS/cms$INSTANCIA1$INSTANCIA2/CMS/bin


# Exibe os novos arquivos e adiciona ao log
echo "Novos arquivos copiados:" >>$arquivoLog


# Exibe a lista final de arquivos no destino e adiciona ao log
ls -lt>>$arquivoLog
