# Access Linux filesystems in Windows and WSL 2

- <https://devblogs.microsoft.com/commandline/access-linux-filesystems-in-windows-and-wsl-2/>
- <https://docs.microsoft.com/zh-cn/windows/wsl/wsl2-mount-disk>

## Sep 1. list the available disks (windows command line)

```powershell
wmic diskdrive list brief
```

## Step 2. access a disk (windows command line)

```powershell
wsl --mount \\.\PHYSICALDRIVE1 --bare
```

## Step 3. show available disk in WSL2

```shell
lsblk
```

## Step 3. mound it in WSL2

```shell
sudo mkdir /linux_disk
sudo mount /dev/sdd4 /linux_disk
```

enjoy it!
