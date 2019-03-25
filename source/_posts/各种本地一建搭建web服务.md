---
title: 各种本地一建搭建web服务
date: 2017-12-17 00:16:20
tags:
---
## Python篇
#### 进入到需要启动web服务的目录执行以下命令即可
- Python3(后面8899是指定的端口可以不加)

```bash
python3 -m http.server 8899
```
- Python2(后面8899是指定的端口可以不加)

```bash
python -m SimpleHTTPServer 8989
```
## Node篇
## Nginx篇
- 首先安装Homebrew [官网](https://brew.sh/)

  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```
- 安装nginx

    ```bash
    brew install nginx
    ```
- 配置nginx.conf

    ```bash
    # 通过brew info nginx  来查看nginx配置文件的路径,然后编辑nginx.conf文件，我的配置文件如下：

    server {
        listen  80; #监听端口
        server_name  git.hackshen.com; #监听地址
        #charset koi8-r;
        #access_log  logs/host.access.log  main;
        #return   301 https://$server_name$request_uri; # 强制重定向为https
        location / {
            root    /Users/hackshen/nginx-web/; # 网站跟目录
            index  index.html index.htm; #设置默认页
            #proxy_pass http://git.hackshen.com:7001; #请求代理
        }
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   html;
        }
    }
    ```
- 启动nginx

    ```javascript
    // 启动nginx的时候你可能遇到一下错误
    nginx: [emerg] bind() to 0.0.0.0:443 failed (13: Permission denied)

    //主要是权限的问题，用以下命令启动即可
    sudo nginx
    ```

- nginx常用命令

    ```javascript
    nginx -s reload //重启nginx服务
    nginx -s stop //停止nginx服务
    ```




