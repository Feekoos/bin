#!/usr/bin/sh

mkdir -p ~/mega
rclone mount --daemon mega: ~/mega
mkdir -p ~/gdrive
rclone mount --daemon gdrive: ~/gdrive
mkdir -p ~/dropbox
rclone mount --daemon dropbox: ~/dropbox
mkdir -p ~/onedrive
rclone mount --daemon onedrive: ~/onedrive
