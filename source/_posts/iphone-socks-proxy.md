---
title: iphone socks proxy
date: 2019-06-30 22:15:27
tags:
---

>PAC:代理自动配置（英语：Proxy auto-config，简称PAC）是一种网页浏览器技术，用于定义浏览器该如何自动选择适当的代理服务器来访问一个网址。[维基百科](https://zh.wikipedia.org/wiki/%E4%BB%A3%E7%90%86%E8%87%AA%E5%8A%A8%E9%85%8D%E7%BD%AE)

- 一个PAC文件包含一个JavaScript形式的函数“FindProxyForURL(url, host)”。这个函数返回一个包含一个或多个访问规则的字符串。用户代理根据这些规则适用一个特定的代理器或者直接访问。当一个代理服务器无法响应的时候，多个访问规则提供了其他的后备访问方法。浏览器在访问其他页面以前，首先访问这个PAC文件。PAC文件中的URL可能是手工配置的，也可能是是通过网页的网络代理自动发现协议（WPAD）自动配置的。



- 创建proxy.pac文件写入以下代码,xx.xx.xx.xx为你服务器的地址， yyyy为你Socks的端口，然后把文件放到你的服务器目录里面确保能访问到 比如：xxx.com/proxy.pac

    ```javascript
    function FindProxyForURL(url, host) {
         return "SOCKS xx.xx.xx.xx:yyyy";
    }
    ```
然后再iPhone上设置 > WLAN > HTTP PROXY 选择Automatic填入刚才文件的url


