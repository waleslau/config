#!/bin/bash

cp -b -u -L ~/.config/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf.`date +%F`.bak 
cp -b -u -L ~/.config/fontconfig/conf.d/21-emoji.conf ~/.config/fontconfig/conf.d/21-emoji.conf.`date +%F`.bak
cp -b -u -L ~/.config/pip/pip.conf ~/.config/pip/pip.conf.`date +%F`.bak 
cp -b -u -L ~/.npmrc ~/.npmrc.`date +%F`.bak
cp -b -u -L ~/.ssh/config ~/.ssh/config.`date +%F`.bak
cp -b -u -L ~/.config/containers/registries.conf ~/.config/containers/registries.conf.`date +%F`.bak
cp -b -u -L ~/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf.`date +%F`.bak
cp -b -u -L ~/.config/mpv/mpv.conf ~/.config/mpv/mpv.conf.`date +%F`.bak

echo "已备份原文件！"

ln -sf $PWD/fonts.conf ~/.config/fontconfig/fonts.conf
ln -sf $PWD/21-emoji.conf ~/.config/fontconfig/conf.d/21-emoji.conf
ln -sf $PWD/pip.conf ~/.config/pip/pip.conf
ln -sf $PWD/npmrc ~/.npmrc
ln -sf $PWD/ssh_config ~/.ssh/config
ln -sf $PWD/registries.conf ~/.config/containers/registries.conf
ln -sf $PWD/kitty.conf ~/.config/kitty/kitty.conf
ln -sf $PWD/mpv.conf ~/.config/mpv/mpv.conf
echo "已创建软链接！"
