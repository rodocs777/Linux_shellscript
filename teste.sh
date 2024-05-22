#!/bin/bash
##########################################################################################################
# Criacao : Script de Deploy Web                                                                          #
#                                                                                                        #
# Exemplo   : ./deployweb.sh hom02-payware hom02-cmsbatch hom02-cmsweb01                                 #
# Ambientes de exemplo: hom02-ws_payware, hom02-cmsbatch, hom02-cmsweb01, hom02-cmsweb02, hom02-cmsweb03 #
#                                                                                                        #
# Ambiente  : homologação                                                                                #
# Autor     : Rodolfo F. Mariucci                                                                        #
# Criação   : 28/03/2024                                                                                 #
# Alteracao : 20/05/2024                                                                                 #
##########################################################################################################

#==========> Variaveis de Ambiente <==========#

nomeshell="deployweb"
DataHora=$(date "+%Y%m%d%H%M%S")
caminhoShell=$(pwd)
caminhoLog=$caminhoShell/Logs/
arquivoLog="${caminhoLog}${nomeshell}.${DataHora}.log"
cd /home/a4882yd/homologa/
chmod 777 *

INSTANCIAS=("$@")

#==========> Funcoes <==========#

deploy_instance() {
  local INSTANCIA=$1

  echo "" 															>>$arquivoLog
  echo "=================== Script de Deploy Web - $INSTANCIA ===============" >>$arquivoLog
  echo ""															>>$arquivoLog

  echo "Os PIDs:"  >>$arquivoLog
  ps -ef | grep $INSTANCIA >>$arquivoLog
  echo "" >>$arquivoLog
  echo "" >>$arquivoLog
  sudo -u admweb /app/scripts/webctl $INSTANCIA status >>$arquivoLog
  cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA/deployments/
  ls -l >>$arquivoLog
  echo "" >>$arquivoLog
  echo "Os números de 'faileds', ANTES de executar o script são:"  >>$arquivoLog
  ls -ls | grep -c "failed" >>$arquivoLog
  echo "" >>$arquivoLog
  ls -l | grep "failed"  >>$arquivoLog
  echo "" >>$arquivoLog
  echo "" >>$arquivoLog
  sudo -u admweb /app/scripts/webctl $INSTANCIA status >>$arquivoLog
  cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA/deployments/
  sleep 3
  ls -l >>$arquivoLog
  echo "" >>$arquivoLog
  echo "O numero de 'faileds' DEPOIS de executar o script são: " >>$arquivoLog
  ls -ls | grep -c "failed"  >>$arquivoLog
  echo "" >>$arquivoLog
  ls -l | grep "failed" >>$arquivoLog
  echo "" >>$arquivoLog
  echo "" >>$arquivoLog
  echo "Os PIDs:"  >>$arquivoLog
  ps -ef | grep $INSTANCIA >>$arquivoLog
}

#==========> Loop através das instâncias <==========#

for INSTANCIA in "${INSTANCIAS[@]}"; do
  if [ -n "$INSTANCIA" ]; then
    deploy_instance "$INSTANCIA"
  fi
done