---
title: SSH agent
date: 2019-08-17 13:58:48
tags:
---

> 🌰: 有一下三台机器 S1、S2、S3 ===> S1的公钥分别放在了S2和S3上面，当然也可以免密分别登录S2和S3，但是当你从S1登录到S2，如果再想从S2登录到S3是需要密码，因为你S2的公钥没有放在S3上面，不过我们可以让S2充当代理的角色

##### 实现:
- 方案1: 编辑本地 vi /etc/ssh/ssh_config 将ForwardAgent值设置为yes，表示允许客户端进行转发
- 方案2: ssh -A root@xxx.xxx.xxx.xxx

