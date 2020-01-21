#!/bin/sh
# 停止frps
sudo systemctl stop frps && \
# 删除frps
rm -rf /usr/local/frps && \
# 删除frps.service
rm -rf /lib/systemd/system/frps.service && \
sudo systemctl daemon-reload && \
# 删除本文件
rm -rf unfrps.sh
echo "卸载完毕"