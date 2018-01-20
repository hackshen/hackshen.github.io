---
title: Browsersync
date: 2017-07-19 19:55:19 
categories: Gulp
tags: 
- browsersync
---
### 简介：
##### BrowserSync 是一个同步多浏览器页面测试工具。更重要的是 Browsersync可以同时在PC、平板、手机等设备下进项调试。
## 1、5分钟快速入门
```bash
	npm install -g browser-sync
```
## 2、启动 BrowserSync
```javascript
一个基本用途是，如果您只希望在对某个css文件进行修改后会同步到浏览器里。那么您只需要运行命令行工具，进入到该项目（目录）下，并运行相应的命令：
```
### 静态网站
```javascript
如果您想要监听.css文件, 您需要使用服务器模式。 BrowserSync 将启动一个小型服务器，并提供一个URL来查看您的网站。
// --files 路径是相对于运行该命令的项目（目录） 
browser-sync start --server --files "css/*.css"
如果您需要监听多个类型的文件，您只需要用逗号隔开。例如我们再加入一个.html文件
// --files 路径是相对于运行该命令的项目（目录） 
browser-sync start --server --files "css/*.css, *.html"
// 如果你的文件层级比较深，您可以考虑使用 **（表示任意目录）匹配，任意目录下任意.css 或 .html文件。 
browser-sync start --server --files "**/*.css, **/*.html"
```
### 动态网站
```javascript
如果您已经有其他本地服务器环境PHP或类似的，您需要使用代理模式。 BrowserSync将通过代理URL(localhost:3000)来查看您的网站。
// 主机名可以是ip或域名
browser-sync start --proxy "主机名" "css/*.css"
在本地创建了一个PHP服务器环境，并通过绑定Browsersync.cn来访问本地服务器，使用以下命令方式，Browsersync将提供一个新的地址localhost:3000来访问Browsersync.cn，并监听其css目录下的所有css文件。
browser-sync start --proxy "Browsersync.cn" "css/*.css"
```


