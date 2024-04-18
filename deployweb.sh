#!/bin/bash
##########################################################################################################
#criacao : Script de Deploy Web                                                                          #                                                                       #
#                                                                                                        #
# Exemplo   : ./deploy.sh hom02-payware hom02-cmsbatch hom02-cmsweb01                                    #
# Ambientes de exemplo: hom02-ws_payware, hom02-cmsbatch, hom02-cmsweb01, hom02-cmsweb02, hom02-cmsweb03 #
#                                                                                                        #
# Ambiente  : homologação                                                                                #
# Autor     : Rodolfo F. Mariucci                                                                        #
# Criação   : 28/03/2024                                                                                 #
# Alteracao : 10/04/2024                                                                                 #
##########################################################################################################



#==========> Variaveis de Ambiente <==========#


nomeshell="deployweb"
DataHora=`/bin/date "+%Y%m%d%H%M%S"`
caminhoLog=/home/a4882yd/Logs/
arquivoLog=$caminhoLog/$nomeshell.$DataHora.log



INSTANCIA1=$1
INSTANCIA2=$2
INSTANCIA3=$3
INSTANCIA4=$4
INSTANCIA5=$5
INSTANCIA6=$6
INSTANCIA7=$7
INSTANCIA8=$8
INSTANCIA9=$9
INSTANCIA10=$10


#==========> Funcoes <==========#



if [ -n $INSTANCIA1 ]
then



clear
echo "" 																>>$arquivoLog
echo "=================== Script de Deploy Web 1 ==============="		>>$arquivoLog
echo ""																	>>$arquivoLog


sudo -u admweb /app/scripts/webctl $INSTANCIA1 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA1/deployments/
ls -l >>$arquivoLog
echo "" >>$arquivoLog
echo "Os números de 'faileds', ANTES de executar o script são:"  >>$arquivoLog ; ls -ls | grep -c  "failed"		>>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
echo ""	>>$arquivoLog
sudo -u admweb /app/scripts/webctl $INSTANCIA1 stop  >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA1/
sudo -u admweb rm -r data ; sudo -u admweb rm -r tmp
sudo -u admweb cp -prf /home/a4882yd/homologa/CMS-* /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA1/deployments/
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA1/deployments/*.failed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA1/deployments/*.dodeploy
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA1/deployments/*.deployed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA1/deployments/*.isdeploying
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA1/deployments/*.undeployed
sudo -u admweb /app/scripts/webctl $INSTANCIA1 start
sudo -u admweb /app/scripts/webctl $INSTANCIA1 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA1/deployments/
ls -l >>$arquivoLog
echo ""	>>$arquivoLog
echo "O numero de 'faileds' DEPOIS de executar o script são: " >>$arquivoLog ; ls -ls | grep -c  "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed" >>$arquivoLog

fi




if [ -n $INSTANCIA2 ]
then



clear
echo "" 																>>$arquivoLog
echo "=================== Script de Deploy Web 2 ==============="		>>$arquivoLog
echo ""																	>>$arquivoLog


sudo -u admweb /app/scripts/webctl $INSTANCIA2 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA2/deployments/
ls -l >>$arquivoLog
echo "" >>$arquivoLog
echo "Os números de 'faileds', ANTES de executar o script são:"  >>$arquivoLog ; ls -ls | grep -c  "failed"		>>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
echo ""	>>$arquivoLog
sudo -u admweb /app/scripts/webctl $INSTANCIA2 stop  >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA2/
sudo -u admweb rm -r data ; sudo -u admweb rm -r tmp
sudo -u admweb cp -prf /home/a4882yd/homologa/CMS-* /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA2/deployments/
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA2/deployments/*.failed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA2/deployments/*.dodeploy
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA2/deployments/*.deployed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA2/deployments/*.isdeploying
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA2/deployments/*.undeployed
sudo -u admweb /app/scripts/webctl $INSTANCIA2 start
sudo -u admweb /app/scripts/webctl $INSTANCIA2 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA2/deployments/
ls -l >>$arquivoLog
echo ""	>>$arquivoLog
echo "O numero de 'faileds' DEPOIS de executar o script são: " >>$arquivoLog ; ls -ls | grep -c  "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed" >>$arquivoLog

fi




if [ -n $INSTANCIA3 ]
then



clear
echo "" 																>>$arquivoLog
echo "=================== Script de Deploy Web 3 ==============="		>>$arquivoLog
echo ""																	>>$arquivoLog


sudo -u admweb /app/scripts/webctl $INSTANCIA3 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA3/deployments/
ls -l >>$arquivoLog
echo "" >>$arquivoLog
echo "Os números de 'faileds', ANTES de executar o script são:"  >>$arquivoLog ; ls -ls | grep -c  "failed"		>>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
echo ""	>>$arquivoLog
sudo -u admweb /app/scripts/webctl $INSTANCIA3 stop  >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA3/
sudo -u admweb rm -r data ; sudo -u admweb rm -r tmp
sudo -u admweb cp -prf /home/a4882yd/homologa/CMS-* /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA3/deployments/
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA3/deployments/*.failed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA3/deployments/*.dodeploy
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA3/deployments/*.deployed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA3/deployments/*.isdeploying
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA3/deployments/*.undeployed
sudo -u admweb /app/scripts/webctl $INSTANCIA3 start
sudo -u admweb /app/scripts/webctl $INSTANCIA3 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA3/deployments/
ls -l >>$arquivoLog
echo ""	>>$arquivoLog
echo "O numero de 'faileds' DEPOIS de executar o script são: " >>$arquivoLog ; ls -ls | grep -c  "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed" >>$arquivoLog

fi




if [ -n $INSTANCIA4 ]
then



clear
echo "" 																>>$arquivoLog
echo "=================== Script de Deploy Web 4 ==============="		>>$arquivoLog
echo ""																	>>$arquivoLog


sudo -u admweb /app/scripts/webctl $INSTANCIA4 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA4/deployments/
ls -l >>$arquivoLog
echo "" >>$arquivoLog
echo "Os números de 'faileds', ANTES de executar o script são:"  >>$arquivoLog ; ls -ls | grep -c  "failed"		>>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
echo ""	>>$arquivoLog
sudo -u admweb /app/scripts/webctl $INSTANCIA4 stop  >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA4/
sudo -u admweb rm -r data ; sudo -u admweb rm -r tmp
sudo -u admweb cp -prf /home/a4882yd/homologa/CMS-* /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA4/deployments/
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA4/deployments/*.failed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA4/deployments/*.dodeploy
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA4/deployments/*.deployed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA4/deployments/*.isdeploying
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA4/deployments/*.undeployed
sudo -u admweb /app/scripts/webctl $INSTANCIA4 start
sudo -u admweb /app/scripts/webctl $INSTANCIA4 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA4/deployments/
ls -l >>$arquivoLog
echo ""	>>$arquivoLog
echo "O numero de 'faileds' DEPOIS de executar o script são: " >>$arquivoLog ; ls -ls | grep -c  "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed" >>$arquivoLog

fi




if [ -n $INSTANCIA5 ]
then



clear
echo "" 																>>$arquivoLog
echo "=================== Script de Deploy Web 5 ==============="		>>$arquivoLog
echo ""																	>>$arquivoLog


sudo -u admweb /app/scripts/webctl $INSTANCIA5 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA5/deployments/
ls -l >>$arquivoLog
echo "" >>$arquivoLog
echo "Os números de 'faileds', ANTES de executar o script são:"  >>$arquivoLog ; ls -ls | grep -c  "failed"		>>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
echo ""	>>$arquivoLog
sudo -u admweb /app/scripts/webctl $INSTANCIA5 stop  >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA5/
sudo -u admweb rm -r data ; sudo -u admweb rm -r tmp
sudo -u admweb cp -prf /home/a4882yd/homologa/CMS-* /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA5/deployments/
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA5/deployments/*.failed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA5/deployments/*.dodeploy
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA5/deployments/*.deployed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA5/deployments/*.isdeploying
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA5/deployments/*.undeployed
sudo -u admweb /app/scripts/webctl $INSTANCIA5 start
sudo -u admweb /app/scripts/webctl $INSTANCIA5 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA5/deployments/
ls -l >>$arquivoLog
echo ""	>>$arquivoLog
echo "O numero de 'faileds' DEPOIS de executar o script são: " >>$arquivoLog ; ls -ls | grep -c  "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed" >>$arquivoLog

fi




if [ -n $INSTANCIA6 ]
then



clear
echo "" 																>>$arquivoLog
echo "=================== Script de Deploy Web 6 ==============="		>>$arquivoLog
echo ""																	>>$arquivoLog


sudo -u admweb /app/scripts/webctl $INSTANCIA6 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA6/deployments/
ls -l >>$arquivoLog
echo "" >>$arquivoLog
echo "Os números de 'faileds', ANTES de executar o script são:"  >>$arquivoLog ; ls -ls | grep -c  "failed"		>>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
echo ""	>>$arquivoLog
sudo -u admweb /app/scripts/webctl $INSTANCIA6 stop  >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA6/
sudo -u admweb rm -r data ; sudo -u admweb rm -r tmp
sudo -u admweb cp -prf /home/a4882yd/homologa/CMS-* /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA6/deployments/
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA6/deployments/*.failed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA6/deployments/*.dodeploy
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA6/deployments/*.deployed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA6/deployments/*.isdeploying
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA6/deployments/*.undeployed
sudo -u admweb /app/scripts/webctl $INSTANCIA6 start
sudo -u admweb /app/scripts/webctl $INSTANCIA6 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA6/deployments/
ls -l >>$arquivoLog
echo ""	>>$arquivoLog
echo "O numero de 'faileds' DEPOIS de executar o script são: " >>$arquivoLog ; ls -ls | grep -c  "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed" >>$arquivoLog

fi




if [ -n $INSTANCIA7 ]
then



clear
echo "" 																>>$arquivoLog
echo "=================== Script de Deploy Web 7 ==============="		>>$arquivoLog
echo ""																	>>$arquivoLog


sudo -u admweb /app/scripts/webctl $INSTANCIA7 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA7/deployments/
ls -l >>$arquivoLog
echo "" >>$arquivoLog
echo "Os números de 'faileds', ANTES de executar o script são:"  >>$arquivoLog ; ls -ls | grep -c  "failed"		>>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
echo ""	>>$arquivoLog
sudo -u admweb /app/scripts/webctl $INSTANCIA7 stop  >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA7/
sudo -u admweb rm -r data ; sudo -u admweb rm -r tmp
sudo -u admweb cp -prf /home/a4882yd/homologa/CMS-* /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA7/deployments/
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA7/deployments/*.failed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA7/deployments/*.dodeploy
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA7/deployments/*.deployed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA7/deployments/*.isdeploying
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA7/deployments/*.undeployed
sudo -u admweb /app/scripts/webctl $INSTANCIA7 start
sudo -u admweb /app/scripts/webctl $INSTANCIA7 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA7/deployments/
ls -l >>$arquivoLog
echo ""	>>$arquivoLog
echo "O numero de 'faileds' DEPOIS de executar o script são: " >>$arquivoLog ; ls -ls | grep -c  "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed" >>$arquivoLog

fi





if [ -n $INSTANCIA8 ]
then



clear
echo "" 																>>$arquivoLog
echo "=================== Script de Deploy Web 8 ==============="		>>$arquivoLog
echo ""																	>>$arquivoLog


sudo -u admweb /app/scripts/webctl $INSTANCIA8 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA8/deployments/
ls -l >>$arquivoLog
echo "" >>$arquivoLog
echo "Os números de 'faileds', ANTES de executar o script são:"  >>$arquivoLog ; ls -ls | grep -c  "failed"		>>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
echo ""	>>$arquivoLog
sudo -u admweb /app/scripts/webctl $INSTANCIA8 stop  >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA8/
sudo -u admweb rm -r data ; sudo -u admweb rm -r tmp
sudo -u admweb cp -prf /home/a4882yd/homologa/CMS-* /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA8/deployments/
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA8/deployments/*.failed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA8/deployments/*.dodeploy
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA8/deployments/*.deployed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA8/deployments/*.isdeploying
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA8/deployments/*.undeployed
sudo -u admweb /app/scripts/webctl $INSTANCIA8 start
sudo -u admweb /app/scripts/webctl $INSTANCIA8 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA8/deployments/
ls -l >>$arquivoLog
echo ""	>>$arquivoLog
echo "O numero de 'faileds' DEPOIS de executar o script são: " >>$arquivoLog ; ls -ls | grep -c  "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed" >>$arquivoLog

fi





if [ -n $INSTANCIA9 ]
then



clear
echo "" 																>>$arquivoLog
echo "=================== Script de Deploy Web 9 ==============="		>>$arquivoLog
echo ""																	>>$arquivoLog


sudo -u admweb /app/scripts/webctl $INSTANCIA9 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA9/deployments/
ls -l >>$arquivoLog
echo "" >>$arquivoLog
echo "Os números de 'faileds', ANTES de executar o script são:"  >>$arquivoLog ; ls -ls | grep -c  "failed"		>>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
echo ""	>>$arquivoLog
sudo -u admweb /app/scripts/webctl $INSTANCIA9 stop  >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA9/
sudo -u admweb rm -r data ; sudo -u admweb rm -r tmp
sudo -u admweb cp -prf /home/a4882yd/homologa/CMS-* /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA9/deployments/
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA9/deployments/*.failed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA9/deployments/*.dodeploy
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA9/deployments/*.deployed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA9/deployments/*.isdeploying
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA9/deployments/*.undeployed
sudo -u admweb /app/scripts/webctl $INSTANCIA9 start
sudo -u admweb /app/scripts/webctl $INSTANCIA9 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA9/deployments/
ls -l >>$arquivoLog
echo ""	>>$arquivoLog
echo "O numero de 'faileds' DEPOIS de executar o script são: " >>$arquivoLog ; ls -ls | grep -c  "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed" >>$arquivoLog

fi





if [ -n $INSTANCIA10 ]
then



clear
echo "" 																>>$arquivoLog
echo "=================== Script de Deploy Web 10 ==============="		>>$arquivoLog
echo ""																	>>$arquivoLog


sudo -u admweb /app/scripts/webctl $INSTANCIA10 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA10/deployments/
ls -l >>$arquivoLog
echo "" >>$arquivoLog
echo "Os números de 'faileds', ANTES de executar o script são:"  >>$arquivoLog ; ls -ls | grep -c  "failed"		>>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
echo ""	>>$arquivoLog
sudo -u admweb /app/scripts/webctl $INSTANCIA10 stop  >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA10/
sudo -u admweb rm -r data ; sudo -u admweb rm -r tmp
sudo -u admweb cp -prf /home/a4882yd/homologa/CMS-* /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA10/deployments/
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA10/deployments/*.failed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA10/deployments/*.dodeploy
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA10/deployments/*.deployed
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA10/deployments/*.isdeploying
sudo -u admweb rm /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA10/deployments/*.undeployed
sudo -u admweb /app/scripts/webctl $INSTANCIA10 start
sudo -u admweb /app/scripts/webctl $INSTANCIA10 status >>$arquivoLog
cd /app/jboss/paywareweb-ws/jboss-eap-7.0/$INSTANCIA10/deployments/
ls -l >>$arquivoLog
echo ""	>>$arquivoLog
echo "O numero de 'faileds' DEPOIS de executar o script são: " >>$arquivoLog ; ls -ls | grep -c  "failed"  >>$arquivoLog
echo ""	>>$arquivoLog
ls -l | grep "failed" >>$arquivoLog

fi
