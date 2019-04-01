---
title: 管理多个ssh key
date: 2019-04-01 20:20:56
tags:
---

### 公司用的是gitlab，但是有时候我也会向GitHub上面push代码，这就需要在本地配置多个公钥
1、首先在本地生成一个公钥和私钥，回车输入你自定义的公钥名称（比如github）

```bash
ssh-keygen -t rsa -C "github邮箱"
```

2、继续在本地生成公钥和私钥，输入自定义名称（比如gitlab）

```bash
ssh-keygen -t rsa -C "gitlab邮箱"
```

### 修改配置文件
在~/.ssh目录下面新建一个config文件内容如下：

```bash
#Github
Host github
HostName github.com
User hackshen.com@gmail.com
IdentityFile ~/.ssh/id_rsa_github

#Gitlab
Host gitlab
HostName gitlab.alibaba-inc.com
User '你的gitlab邮箱'
IdentityFile ~/.ssh/id_rsa_gitlab
```
### 测试
```bash
ssh -T git@github.com
```

