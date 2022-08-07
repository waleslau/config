#!/bin/bash

dir=/home/idea/Sync/Git # 该目录下存放需要被统一处理的Git仓库
for repo in $(ls); do
    if test -d $repo; then
        cd $repo
        for remote in $(git remote show); do echo "repo: $repo remote: $remote" && git push $remote; done
    else
        echo "$repo is not dir"
    fi
    cd $dir
done
