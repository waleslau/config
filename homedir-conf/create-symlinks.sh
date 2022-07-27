#!/bin/bash

cp -b -u -L ~/.config/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf.`date +%F`.bak 
cp -b -u -L ~/.config/pip/pip.conf ~/.config/pip/pip.conf.`date +%F`.bak 
cp -b -u -L ~/.npmrc ~/.npmrc.`date +%F`.bak
cp -b -u -L ~/.ssh/config ~/.ssh/config.`date +%F`.bak
cp -b -u -L ~/.config/containers/registries.conf ~/.config/containers/registries.conf.`date +%F`.bak

echo "已备份原文件！"

ln -sf $PWD/fonts.conf ~/.config/fontconfig/fonts.conf
ln -sf $PWD/pip.conf ~/.config/pip/pip.conf
ln -sf $PWD/npmrc ~/.npmrc
ln -sf $PWD/ssh_config ~/.ssh/config
ln -sf $PWD/registries.conf ~/.config/containers/registries.conf

echo "已创建软链接！"
