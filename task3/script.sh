# Отправка логов
logwatch --logdir /var/log --mailto ваш_адрес_электронной_почты --service sshd --service vsftpd --service xrdp --detail High

# Задаём cron-расписание
crontab -e | 0 8 * * * /usr/sbin/logwatch
