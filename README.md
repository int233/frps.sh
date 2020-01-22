# frp服务器端frps一键安装卸载脚本
## 简介
一个简单的frps安装卸载脚本.方便新手快速部署.脚本已设置开机自启动,但具体使用端口需自行开放防火墙.

## 使用说明
由于frps服务器端需要配置参数,本脚本为原版frps.ini,安装完毕后请自行编辑frps.ini配置端口,密码等相关参数.同时你也可以fork本仓库后自行修改frps.ini,在进行一键安装也非常方便.后期也可以自行调整frps.ini配置和frps的版本.

### 一键脚本(先运行脚本,在自行修改frps.ini)
安装
```shell
wget https://raw.githubusercontent.com/stilleshan/frps.sh/master/frps.sh && chmod +x frps.sh && ./frps.sh
```
卸载
```shell
wget https://raw.githubusercontent.com/stilleshan/frps.sh/master/unfrps.sh && chmod +x unfrps.sh && ./unfrps.sh
```
安装完毕后配置frps.ini
```shell
vi /usr/local/frps/frps.ini
```
配置完成重启frps生效
```shell
sudo systemctl restart frps
```

### 自定义一键脚本(fork本仓库后自行修改配置)
- 首先fork本仓库
- 自行配置frps.ini
- 修改frps.sh脚本信息
- 修改脚本链接并运行

#### 修改 frps.sh 脚本
`FRP_VERSION="0.31.1"` 可根据原版项目更新自行修改为最新版本  
`REPO="stilleshan/frps.sh"` 由于fork到你自己的仓库,修改`stilleshan`为你的GitHub账号ID

#### 修改并运行一键脚本
修改以下脚本链接中的`stilleshan`为你的GitHub账号ID后,运行即可.
```shell
wget https://raw.githubusercontent.com/stilleshan/frps.sh/master/frps.sh && chmod +x frps.sh && ./frps.sh
```
#### 卸载脚本
unfrps.sh卸载脚本为通用脚本,可同上方法修改也可使用本仓库的脚本.
```shell
wget https://raw.githubusercontent.com/stilleshan/frps.sh/master/unfrps.sh && chmod +x unfrps.sh && ./unfrps.sh
```

### frps相关命令
```shell
sudo systemctl start frps
# 启动服务 
sudo systemctl enable frps
# 开机自启
sudo systemctl status frps
# 状态查询
sudo systemctl restart frps
# 重启服务
sudo systemctl stop frps
# 停止服务
```

## 相关链接
- 原版frp项目 [fatedier/frp](https://github.com/fatedier/frp)
- [CentOS 7 安装配置frp内网穿透服务器端教程](https://www.ioiox.com/archives/5.html)
- [群晖NAS安装配置免费frp内网穿透教程](https://www.ioiox.com/archives/6.html)
- [群晖NAS使用Docker安装配置frpc内网穿透教程](https://www.ioiox.com/archives/26.html)