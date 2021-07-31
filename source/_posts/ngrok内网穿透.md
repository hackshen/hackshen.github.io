---
title: Frp内网穿透
date: 2018-01-20 23:13:11
tags:
---

> [Frp](https://github.com/fatedier/frp) 是一个专注于内网穿透的高性能的反向代理应用，支持 TCP、UDP、HTTP、HTTPS 等多种协议。可以将内网服务以安全、便捷的方式通过具有公网 IP 节点的中转暴露到公网。

#### 目前打包成了docker镜像可以用docker部署

```bash
# 客户端运行
docker run \
    -d \
    --name frp_c \
    --network host \
    -v <local frpc.ini path>:/frp/frpc.ini \
    hackshen/frp
# 服务端运行
docker run \
    -itd \
    --name frp_s \
    --network host \
    -v <local frps.ini path>:/frp/frps.ini \
    hackshen/frp /bin/sh -c './frps -c frps.ini'
```

> frpc.ini
```bash
[common]
# 服务器地址
server_addr = xxx.xxx.xxx.xxx
server_port = 7002
admin_addr =  127.0.0.1
admin_port = 7400
admin_user = admin
admin_pwd = admin

[ssh]
type = tcp
local_ip = 127.0.0.1
local_port = 22
remote_port = 6007
```

>  frps.ini
```bash
[common]
dashboard_port = 7500
#dashboard 用户名密码，默认都为 admin
dashboard_user = admin
dashboard_pwd = admin
bind_port=7002
vhost_http_port = 81
```

