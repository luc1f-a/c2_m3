#!/bin/bash

# Определяем текущую дату для имени бэкапа
CURRENT_DATE=$(date +"%Y%m%d_%H%M%S")

# Путь к результирующему файлу бэкапа
BACKUP_FILE="/tmp/backup_$CURRENT_DATE.tar.gz"

# Создание бэкапа для /home, конфигураций удаленного доступа и /var/log
tar czf $BACKUP_FILE /home /etc/ssh /etc/xrdp /etc/vsftpd /var/log

# Перемещение бэкапа в /archive
mv $BACKUP_FILE /archive/