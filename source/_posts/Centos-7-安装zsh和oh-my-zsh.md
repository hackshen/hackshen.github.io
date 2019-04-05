---
title: Centos 7 安装zsh和oh-my-zsh
date: 2019-04-05 23:11:51
tags:
---

1、查看当前系统是否有zsh

```bash
cat /etc/shells
```
2、如果没有zsh执行下面命令安装，如果已安装直接跳到第三步

```bash
sudo yum install zsh -y
```
3、安装oh-my-zsh

```bash
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```


