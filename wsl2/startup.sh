#!/bin/bash
#====================================================================
# aptのアップデート
#====================================================================
yes | sudo apt-get update
yes | sudo apt-get upgrade

#====================================================================
# 文字化け対策
#====================================================================
gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8','CURRENT','SHIFT_JIS','EUC-JP','ISO-2022-JP','UTF-16']"
gsettings set org.gnome.gedit.preferences.encodings shown-in-menu "['UTF-8','SHIFT_JIS','EUC-JP','ISO-2022-JP','UTF-16']"

#====================================================================
# ソフトウェアインストール
#====================================================================
# tree command
yes | sudo apt-get install tree curl
# git
yes | sudo apt-get install git
# vim
yes | sudo apt-get install vim

#====================================================================
# git設定
#====================================================================
git config --global user.name "ユーザ名"
git config --global user.email "使用するメールアドレス"
git config --global core.quotepath false

