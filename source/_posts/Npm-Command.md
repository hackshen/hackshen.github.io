---
title: Npm Command
date: 2018-01-22 11:40:27
tags:
---

#### 工作中常用的命令

```bash
# 查看npm版本
npm -v

# 查看npm配置
npm config ls

# 查看npm源
npm config get registry

# 设置npm源（也可安装cnpm）
npm config set registry https://registry.npm.taobao.org

# 安装cnpm
npm i -g cnpm --registry=https://registry.npm.taobao.org

# 初始化生成package.json(加y参数可以跳过配置)
npm init -y

# 在项目中调试模块
npm link

# 搜索模块
npm search

# 列出项目安装的模块
npm list

# 发布模块
npm publish

```
