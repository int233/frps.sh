#!/bin/sh
FRP_VERSION="0.31.1"
REPO="stilleshan/frps.sh"
WORK_PATH=$(dirname $(readlink -f $0))

# 创建frps文件夹
mkdir -p /usr/local/frp && \
# 下载并移动frps文件
wget -P ${WORK_PATH} https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz && \
tar -zxvf frp_${FRP_VERSION}_linux_amd64.tar.gz && \
cd frp_${FRP_VERSION}_linux_amd64 && \
mv frps /usr/local/frp && \
# 下载frps.in和frps.service
wget -P /usr/local/frp https://raw.githubusercontent.com/${REPO}/master/frps.ini && \
wget -P /lib/systemd/system https://raw.githubusercontent.com/${REPO}/master/frps.service && \
systemctl daemon-reload && \
# 删除多余文件
cd ${WORK_PATH} && \
rm -rf frp_${FRP_VERSION}_linux_amd64 frp_${FRP_VERSION}_linux_amd64.tar.gz && \
# 启动frps
sudo systemctl start frps && \
sudo systemctl enable frps && \
# 清除frps.sh
rm -rf ${WORK_PATH}/frps.sh
echo "安装完毕"