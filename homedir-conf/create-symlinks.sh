#!/bin/bash

# 保留多个备份
#cp ~/.config/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf.`date +%F_%T`.bak 
#cp ~/.fonts.conf ~/.fonts.conf.`date +%F_%T`.bak
#cp ~/.config/pip/pip.conf ~/.config/pip/pip.conf.`date +%F_%T`.bak 
#cp ~/.npmrc ~/.npmrc.`date +%F_%T`.bak
#cp ~/.ssh/config ~/.ssh/config.`date +%F_%T`.bak
#cp ~/.config/containers/registries.conf ~/.config/containers/registries.conf.`date +%F_%T`.bak
# 删除比较麻烦
# 到每个目录下分别执行
# for i in `ls -a | grep 2022-07`;do rm $i;done

# 最多保留两个备份
cp -b -u -L ~/.config/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf.bak 
cp -b -u -L ~/.fonts.conf ~/.fonts.conf.bak
cp -b -u -L ~/.config/pip/pip.conf ~/.config/pip/pip.conf.bak 
cp -b -u -L ~/.npmrc ~/.npmrc.bak
cp -b -u -L ~/.ssh/config ~/.ssh/config.bak
cp -b -u -L ~/.config/containers/registries.conf ~/.config/containers/registries.conf.bak

echo "已备份原文件！"

ln -sf $PWD/fonts.conf ~/.config/fontconfig/fonts.conf
ln -sf $PWD/fonts.conf ~/.fonts.conf
ln -sf $PWD/pip.conf ~/.config/pip/pip.conf
ln -sf $PWD/npmrc ~/.npmrc
ln -sf $PWD/ssh_config ~/.ssh/config
ln -sf $PWD/registries.conf ~/.config/containers/registries.conf

echo "已创建软链接！"
