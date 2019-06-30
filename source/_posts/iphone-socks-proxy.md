---
title: iphone socks proxy
date: 2019-06-30 22:15:27
tags:
---

> 创建proxy.pac文件写入以下代码,xx.xx.xx.xx为你服务器的地址， yyyy为你Socks的端口，然后把文件放到你的服务器目录里面确保能访问到 比如：xxx.com/proxy.pac

```javascript
function FindProxyForURL(url, host) {
     return "SOCKS xx.xx.xx.xx:yyyy";
}
```
然后再iPhone上设置 > WLAN > HTTP PROXY 选择Automatic填入刚才文件的url