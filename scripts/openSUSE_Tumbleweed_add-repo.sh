sudo rm -rf /etc/zypp/repos.d/*.repo
sudo zypper ar -Cfg 'https://mirrors.bfsu.edu.cn/opensuse/tumbleweed/repo/oss/' oss
sudo zypper ar -Cfg 'https://mirrors.bfsu.edu.cn/opensuse/tumbleweed/repo/non-oss/' non-oss
# sudo zypper ar -CFg 'https://download.opensuse.org/repositories/home:/opensuse_zh/openSUSE_Tumbleweed/' obs-opensuse_zh
sudo zypper ar -CFg 'https://ftp.gwdg.de/pub/opensuse/repositories/home:/opensuse_zh/openSUSE_Tumbleweed/' obs-opensuse_zh
sudo zypper ar -Cfg 'https://mirrors.bfsu.edu.cn/packman/suse/openSUSE_Tumbleweed/' packman
# sudo zypper ar -CFg 'http://download.opensuse.org/repositories/X11:/Bumblebee/openSUSE_Tumbleweed/' bumblebee
# sudo zypper ar -CFG 'https://packages.microsoft.com/yumrepos/vscode/' vscode
# sudo zypper ar -CFg 'https://download.opensuse.org/repositories/home:/waleslau/openSUSE_Tumbleweed/' obs-waleslau
# sudo zypper ar -CFg 'https://download.opensuse.org/repositories/home:/zzndb/openSUSE_Tumbleweed/' obs-zzndb
# sudo zypper ar -CFg http://download.opensuse.org/repositories/games/openSUSE_Tumbleweed/ obs-games
# sudo zypper ar -CFg https://download.opensuse.org/repositories/games:tools/openSUSE_Tumbleweed/ obs-games-tools
sudo zypper ar -CFg https://ftp.gwdg.de/pub/opensuse/repositories/hardware/openSUSE_Tumbleweed/ obs-hardware-tools

# sudo zypper mr -d obs-games
# sudo zypper mr -d obs-games-tools

sudo zypper ref
