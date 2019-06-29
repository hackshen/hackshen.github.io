---
title: SSH password free login
date: 2019-06-29 22:16:05
tags:
---

> SSH 免密登录，手动把自己本地的公钥copy到远程服务器上~/.ssh/authorized_keys这个文件里面，如果没有就新建一个，比较快速方法就是在Terminal执行

```bash
# root为远程登录的账户，xx.xx.xx.xx替换成你服务器ip
ssh-copy-id root@xx.xx.xx.xx
```
以后我们就可以ssh root@xx.xx.xx.xx 就不需要输密码了😀


