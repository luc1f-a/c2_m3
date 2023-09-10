#!/bin/bash

# Проверка наличия репозитория Backports
grep -q "^deb .*backports" /etc/apt/sources.list || echo "deb http://deb.debian.org/debian $(lsb_release -cs)-backports main" >> /etc/apt/sources.list

# Обновление пакетного менеджера
apt update
apt upgrade

# Установка Apache2 и его запуск
apt install -y apache2
systemctl start apache2
systemctl enable apache2

# Установка Python
apt install -y python3

# Установка и поднятие SSH-сервера
apt install -y openssh-server
systemctl start sshd
systemctl enable sshd

# Установка vim (для удобства редактирования файлов)
apt install -y vim

# Установка git (для работы с репозиториями)
apt install -y git

# Создание каталога для кастомных скриптов
mkdir -p ~/scripts

# Добавление алиаса для быстрого перехода к каталогу скриптов
echo "alias gotoscripts='cd ~/scripts'" >> ~/.bashrc

# Установка утилиты htop (для мониторинга ресурсов системы)
apt install -y htop

# Установка curl (полезный инструмент для работы с HTTP из командной строки)
apt install -y curl

echo "Настройка завершена!"