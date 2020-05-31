#!/bin/bash
DATE=$(date +%Y-%m-%d)
dia=$(date +%u) # Per indicar el dia de la setmana
if [ $dia -eq 0 ]
then
  tar -cvzpf /home/backup/completa$DATE.tar.gz /home/sjo/*
else
  tar -cpvzf /home/backup/completa$DATE.tar.gz -g /home/backup/backup.snap /home/sjo/*
fi
