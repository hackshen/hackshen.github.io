---
title: Sublime Text 3 配置Eslint
date: 2018-07-12 19:32:50
tags:
---

# Sublime Text 3 配置Eslint

> 由于目前打包项目里面没有配置Eslint，所以为了要求自己的代码更规范所以就折腾下


#### 本机环境

```bash
Mac：10.12.6
node：v8.9.0
sublime: build 3176
```

### ESlint安装配置
- 首先我们要全局安装ESlint

    ```bash
    npm install eslint -g
    ```
- 安装sublimelinter & sublimelinter-contrib-eslint
    - Sublime​Linter：是一个代码检查框架插件，功能非常强大，支持各种语言的检查。但是它本身并没有代码检查的功能，需要借助 ESLint 这样的特定语言检查支持

    - sublimelinter-contrib-eslint：我们安装使用对应的 Sublime​Linter-contrib-eslint 插件可以帮助我们使用eslint

    - 在sublime里面`command + shift + p`选择`Package Control:Install Package`然后在弹出的对话框中搜索`sublimelinter`点击安装，安装完后才操作以上步骤安装`SublimeLinter-contrib-eslint`此处有坑，直接搜索是搜索不出来的，要搜索eslint这样搜索框里面才会出现`SublimeLinter-contrib-eslint`点击安装即可

- 按以上步骤安装成功后就配置下`sublimelinter`的node路径，配置文件如下：

    ```javascrip
    // SublimeLinter Settings - User
    {
        "paths": {
            "linux": [],
            "osx": [
                "/Users/hackshen/.nvm/versions/node/v8.9.0/bin" //# 设置 node 路径
            ],
            "windows": []
        }
    }
    ```
    node路径根据自己本机安装路径填写，Mac系统可以用`which  node`来查看本机node路径

- 一切准备就绪现在开始初始化eslint配置文件

 - 通过`eslint --init`在你的项目根目录初始化一个配置文件`.eslintrc.js`，初始化后的文件如下：

     ```javascript
     module.exports = {
        "env": {
            "browser": true
        },
        "extends": "eslint:recommended",
        "rules": {
            "indent": [
                "error",
                4
            ],
            "linebreak-style": [
                "error",
                "unix"
            ],
            "quotes": [
                "error",
                "single"
            ],
            "semi": [
                "error",
                "never"
            ]
        }
    };
     ```
我们可以自由配置，具体配置请参[官方eslint配置](http://eslint.cn/docs/rules/)

