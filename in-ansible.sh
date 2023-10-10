#!/bin/bash

sudo apt update

# Periksa apakah Anda memiliki hak superuser (root) atau bukan
if [[ $EUID -ne 0 ]]; then
    echo "Script ini harus dijalankan dengan hak superuser (root)." 
    exit 1
fi

# Perbarui paket-paket yang ada
apt update -y

# Instal Ansible
apt install ansible -y

# Tampilkan versi Ansible yang telah diinstal
ansible --version

echo "Instalasi Ansible selesai."
