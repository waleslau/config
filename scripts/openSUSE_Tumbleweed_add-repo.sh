sudo rm -rf /etc/zypp/repos.d/*.repo
sudo zypper ar -Cfg 'https://opentuna.cn/opensuse/tumbleweed/repo/oss/' oss
sudo zypper ar -Cfg 'https://opentuna.cn/opensuse/tumbleweed/repo/non-oss/' non-oss
sudo zypper ar -CFg 'https://download.opensuse.org/repositories/home:/opensuse_zh/openSUSE_Tumbleweed/' home_opensuse_zh
sudo zypper ar -Cfg 'https://mirrors.bfsu.edu.cn/packman/suse/openSUSE_Tumbleweed/' packman
sudo zypper ar -CFg 'http://download.opensuse.org/repositories/X11:/Bumblebee/openSUSE_Tumbleweed/' bumblebee
sudo zypper ar -CFG 'https://packages.microsoft.com/yumrepos/edge/' microsoft-edge
sudo zypper ar -CFG 'https://packages.microsoft.com/yumrepos/vscode/' vscode
sudo zypper ar -CFg 'https://download.opensuse.org/repositories/home:/waleslau/openSUSE_Tumbleweed/' home_waleslau
sudo zypper ar -CFg 'https://download.opensuse.org/repositories/home:/zzndb/openSUSE_Tumbleweed/' home_zzndb
sudo zypper ar -Cfg 'http://download.opensuse.org/update/tumbleweed/' update
sudo zypper ar -CFg -r https://pkgs.tailscale.com/stable/opensuse/tumbleweed/tailscale.repo

sudo zypper mr -d update
sudo zypper mr -d home_waleslau

sudo proxychains4 zypper ref
# sudo proxychains4 zypper dup
