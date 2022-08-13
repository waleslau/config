#!/bin/bash


\rm ~/.config/fontconfig/fonts.conf ~/.config/fontconfig/conf.d/21-emoji.conf ~/.config/pip/pip.conf ~/.npmrc ~/.ssh/config ~/.config/containers/registries.conf ~/.config/mpv/mpv.conf ~/.config/kitty/kitty.conf

cp -vf $PWD/fonts.conf ~/.config/fontconfig/fonts.conf
cp -vf $PWD/21-emoji.conf ~/.config/fontconfig/conf.d/21-emoji.conf
cp -vf $PWD/pip.conf ~/.config/pip/pip.conf
cp -vf $PWD/npmrc ~/.npmrc
cp -vf $PWD/ssh_config ~/.ssh/config
cp -vf $PWD/registries.conf ~/.config/containers/registries.conf
cp -vf $PWD/kitty.conf ~/.config/kitty/kitty.conf
cp -vf $PWD/mpv.conf ~/.config/mpv/mpv.conf
