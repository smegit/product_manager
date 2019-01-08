#!/bin/bash
HOST='sys.smeg.com.au'
USER='tms'
PASSWD='smeg2011'
cd /home/deploy/smeg_it/current/public/production/export/
ftp -n -v $HOST << EOT
user $USER $PASSWD
prompt
cd /prodimp/
mput *.*
bye
EOT