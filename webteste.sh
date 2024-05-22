#!/bin/bash
##########################################################################################################
# Criacao: Script de Web Teste                                                                           #
#                                                                                                        #
# Exemplo: ./webteste.sh hom01-ws_payware hom01-cmsweb01 hom01-cmsweb02 hom01-cmsweb03 hom01-cmsbatch    #
# hom02-ws_payware hom02-cmsweb01 hom02-cmsweb02 hom02-cmsweb03 hom02-cmsbatch hom03-ws_payware          #
# hom03-cmsweb01 hom03-cmsweb02 hom03-cmsweb03 hom03-cmsbatch hom04-ws_payware hom04-cmsweb01            #
# hom04-cmsweb02 hom04-cmsweb03 hom04-cmsbatch hom05-ws_payware hom05-cmsweb01 hom05-cmsweb02            #
# hom05-cmsweb03 hom05-cmsbatch hom06-ws_payware hom06-cmsweb01 hom06-cmsweb02 hom06-cmsweb03            #
# hom06-cmsbatch    hom07-ws_payware hom07-cmsweb01 hom07-cmsweb02 hom07-cmsweb03 hom07-cmsbatch         #
# hom08-ws_payware hom08-cmsweb01 hom08-cmsweb02 hom08-cmsweb03 hom08-cmsbatch hom09-ws_payware          #
# hom09-cmsweb01 hom09-cmsweb02 hom09-cmsweb03 hom09-cmsbatch hom10-ws_payware hom10-cmsweb01            #
# hom10-cmsweb02 hom10-cmsweb03 hom10-cmsbatch                                 							 #
#                                                                                                        #
# Ambiente  : homologação                                                                                #
# Autor     : Rodolfo F. Mariucci                                                                        #
# Criação   : 28/03/2024                                                                                 #
# Alteracao : 20/05/2024                                                                                 #
##########################################################################################################

#==========> Variaveis de Ambiente <==========#

nomeshell="webteste"
DataHora=$(date "+%Y%m%d%H%M%S")
caminhoShell=$(pwd)
caminhoLog=$caminhoShell/Logs/
arquivoLog="${caminhoLog}${nomeshell}.${DataHora}.log"

INSTANCIAS=("$@")

#==========> Funcoes <==========#

deploy_instance() {
  local INSTANCIA=$1

  echo "" 															>>$arquivoLog
  echo "=================== Script de Deploy Web - $INSTANCIA ===============" >>$arquivoLog
  echo ""															>>$arquivoLog

  sudo -u admweb /app/scripts/webctl $INSTANCIA status >>$arquivoLog
  cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA/deployments/
  ls -l >>$arquivoLog
  echo "" >>$arquivoLog
  echo "Os números de 'faileds'são:"  >>$arquivoLog
  ls -ls | grep -c "failed" >>$arquivoLog
  echo "" >>$arquivoLog
  ls -l | grep "failed"  >>$arquivoLog
  echo "" >>$arquivoLog
  echo "" >>$arquivoLog
}

#==========> Loop através das instâncias <==========#

for INSTANCIA in "${INSTANCIAS[@]}"; do
  if [ -n "$INSTANCIA" ]; then
    deploy_instance "$INSTANCIA"
  fi
done