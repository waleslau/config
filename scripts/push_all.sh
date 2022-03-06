#!/bin/bash

#echo "\$0: $0"
#echo ${FUNCNAME[0]} in ${BASH_SOURCE[0]}
#cd "${BASH_SOURCE%/*}" && pwd

# find . -type d -name .git -execdir sh -c "pwd && git pull" \;

find "${BASH_SOURCE%/*}" -type d -name .git -execdir sh -c "echo '#########' && pwd && git pull --rebase && git push gitea ; git push codeberg ; git push github" \;

# 把本脚本置于存放git仓库的目录内执行即可
