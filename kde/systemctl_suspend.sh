#!/bin/bash
# 在节能设置里如果设置超时锁屏就不能设置超时睡眠了
# 添加空闲xx分钟则运行此脚本可以变相解决上面的问题
systemctl suspend
