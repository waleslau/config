export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
export EDITOR=vim
#export EDITOR=/usr/bin/vim

transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n transfer <file|directory>\n ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;echo "  ";}

alias sudo="sudo "
alias kde-restart="kquitapp5 plasmashell && kstart plasmashell"
alias wps-office="env QT_SCREEN_SCALE_FACTORS=1 wps-office"
alias git-push-all='for i in $(git remote show) ;do git push $i ;done'
alias git-force-push-all='for i in $(git remote show) ;do git push -f $i ;done'
alias git-add-commit-push='git add . && git commit -m "update" && for i in $(git remote show) ;do git push $i ;done'
alias iftop="sudo iftop"
alias pyc="proxychains4"
alias hexo-server='hexo c && hexo g && hexo s'
alias hugo-server='hugo server -D'
alias cf="clang-format --style=WebKit"
alias py="python3"
alias reboot="sudo shutdown -r now"
alias poweroff="sudo shutdown -h now"
alias sys-suspend="systemctl hybrid-sleep"
alias sys-hibernate="systemctl hibernate"
alias paste-farsee='curl --noproxy -F "c=@-" "https://fars.ee/"' 
alias paste-termbin="nc termbin.com 9999"
alias fopen="cat-all.py | fzf | awk '{print $1}' | xargs xdg-open &>/dev/null"
fcd(){cd $(fd --type directory | fzf)}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                                 # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"               # This loads nvm bash_completion
alias nvm-update='nvm install --lts && nvm use --lts && nvm alias default lts/*' # just work on bash
