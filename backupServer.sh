#!/bin/bash
DATE=$(date +%Y-%m-%d)
dia=$(date +%d)
if [ "$dia" -eq "1" ]
then
  rm /home/seguridad/backup/*.snar
  rm  /home/seguridad/backup/*.tar.gz
  tar -cvzpf /home/seguridad/backup/completa$DATE.tar.gz -g /home/seguridad/backup/imagen.snar /home/seguridad/Documents

elif [[ "$hoy" -eq "10" ]]
then
  mv /home/seguridad/backup/imagen.snar /home/seguridad/backup/imagend1.snar
  tar -cvzpf /home/seguridad/backup/completa$DATE.tar.gz -g /home/seguridad/backup/imagen.snar /home/seguridad/Documents

elif [[ "$hoy" -eq "20" ]]
then
  mv /home/seguridad/backup/imagen.snar /home/seguridad/backup/imagend10.snar
  tar -cvzpf /home/seguridad/backup/completa$DATE.tar.gz -g /home/seguridad/backup/imagen.snar /home/seguridad/Documents
else
  tar --create --listed-incremental=/home/seguridad/backup/imagen.snar --verbose --verbose --file=/home/seguridad/backup/incremental$DATE.tgz /home/seguridad/Documents
fi
