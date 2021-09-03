---
title: Mac Terminal Socks5 proxy Settings
date: 2019-06-23 10:45:50
tags:
---

>在公司拉github代码还是蛮快的，但是回到家用浏览器Socks5上GitHub贼快，但是Terminal默认不走Socks5所以拉代码贼慢，解决方法：让Terminal也走Socks5

#### 在Terminal输入以下代码
```bash
# 临时改变Terminal的代理，窗口关闭后失效
export all_proxy=socks5://proxy.hackshen.com:1080
```
把以下方法copy到你的~/.zshrc文件里
```bash
# Terminal proxy
function proxy_off(){
    unset http_proxy
    echo -e "已关闭代理"
}

function proxy_on() {
    export all_proxy=socks5://proxy.hackshen.com:1080 # 配置http和https访问
    echo -e "已开启代理"
}
```