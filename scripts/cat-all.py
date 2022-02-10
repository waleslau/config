#!/usr/bin/env python3
import os,sys, subprocess

IGNORE_DIRS=[".git",".vscode","build","node_modules"]
pwd=os.getcwd()

for  (dirpath, dirnames, filenames) in os.walk(pwd):
    if not any(ig in dirpath for ig in IGNORE_DIRS):
        for file in filenames:
            full_path=dirpath+"/"+file
            relative_path=full_path[len(pwd)+1:]

            mimetype=subprocess.check_output(["file","--dereference","--brief", "--mime-type", full_path]).decode()
            
            if(mimetype.startswith("text")):
                try:
                    with open(full_path,"r") as f:
                        for ln,line in enumerate(f,start=1):
                            if not line.isspace():
                                print(relative_path,"|",ln,"|",line.strip())
                except:
                    print("[FAILED] ",full_path, file=sys.stderr) 

'''
# move this file to ~/bin
# install fd and fzf
# then add the following contents to .bashrc & .zshrc

export PATH=$HOME/bin:/usr/local/bin:$PATH
fcd(){
cd $(fd --type directory | fzf)
}
fopen(){
cat-all.py | fzf | awk '{print $1}' | xargs xdg-open &> /dev/null
}
transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n transfer <file|directory>\n ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;echo "  ";}
'''
