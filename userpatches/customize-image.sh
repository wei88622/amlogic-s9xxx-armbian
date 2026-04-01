#!/bin/bash

# 禁用 Armbian 首次开机强制修改密码
删除 -f /root/.not_logged_in_yet
更改 -d 99999 根
更改 -m 0 -M 99999 -I -1 -E -1 根

# 预设 root 密码为 1234
回显"root:1234" | 改密码

# 关闭首次配置服务
systemctl 禁用 armbian-firstlogin
systemctl 禁用 armbian-firstrun
systemctl 禁用 armbian-firstrun-config
