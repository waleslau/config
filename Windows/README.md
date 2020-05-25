# Windows

## 如何隐藏右键选项

给该选项注册表内项新建一个名为"**Extended**"的字符串值项即可
example：

```reg
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\git_shell]
@="Git Ba&sh Here"
"Icon"="C:\\Program Files\\Git\\git-bash.exe"
"Extended"=""

[HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\git_shell\command]
@="\"C:\\Program Files\\Git\\git-bash.exe\" \"--cd=%v.\""


```
