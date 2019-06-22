#!/bin/bash
DATE=$(date +%Y-%m-%d-%H%M%S)
 
# Da im Home-VZ abgelegt wird, kann das komplette Home-VZ nicht in (2) angegeben werden
BACKUP_DIR="$HOME"
 
# (2)
# Hier Ordner auflisten, die gesichert werden sollen.
# Zwischen den einzelnen Pfaden muss immer ein Leerzeichen sein
SOURCE="$HOME/Dokumente $HOME/Downloads"
 
#ungepackt, Nutzerechte werden im .tar behalten,
#danach .tar-> .7z  mit Passwort (Passworteingabe während des Backups)
tar -cpf $BACKUP_DIR/backup.tar $SOURCE
7z a -t7z -mhe=on -p -mmt=on -mx=0 $BACKUP_DIR/backup-$USER-$DATE $BACKUP_DIR/backup.tar
#sicheres löschen mit shred
shred -fuz $BACKUP_DIR/backup.tar
