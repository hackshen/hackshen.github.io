---
title: Chrome打包自己，已安装的插件
date: 2017-12-16 23:50:10
tags:
---
## Chrome打包自己，已安装的插件
- 浏览器地址栏输入`chrome://extensions/`打开安装的扩展程序
- 进入Chrome插件目录：
```javascript
    ~/Library/Application Support/Google/Chrome/Default/Extensions/ID,ID换成你插件的ID，比如我电脑上Allow-Control-Allow-Origin这个插件的ID是nlfbmbojpeacfghkpbjhddihlkkiljbi,那我的插件 路径就是`~/Library/Application Support/Google/Chrome/Default/Extensions/nlfbmbojpeacfghkpbjhddihlkkiljbi
```
- 在扩展程序界面选择开发者模式，这时候打包扩展程序这个选项才会显示出来
- 点击打包扩展程序，在扩展程序根目录输入框中填入第二步的路径，然后点击打包扩展程序，这时候会在打包插件的根目录生成一个crx文件，这就是打包好的插件


