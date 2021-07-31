---
title: 前端环境Mac配置篇
date: 2018-01-02 23:13:25
tags:
---
### Homebrew
- Homebrews是Mac上的软件包管理工具，可以很方便的安装Python、MySQL、MongoDB、NGINX、nvm、wget等等....
- Homebrew安装  
	- 打开终端输入以下命令即可：
	
		```bash
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		```
	- 常用命令：
		- 搜索软件：brew search nginx
		- 安装软件：brew install nginx
		- 卸载软件：brew remove nginx

### Nvm & Node
- Nvm是nodejs版本管理工具，一台操作系统上可以装多个node版本可以随意切换

- 首先安装nvm： 

	```bash
	brew install nvm
	```
	安装完成后在你的环境变量里面添加:
	
	```bash
	export NVM_DIR=~/.nvm
	source $(brew --prefix nvm)/nvm.sh
	```
	如果你使用的是系统默认的bash，那么添加到`~/.bash_profile`这个文件里面，如果这个文件不存在则新建一个，如果你安装有oh-my-zsh，则添加到`~/.zshrc`这个文件夹里面，然后重启终端即可，如果不想重启终端直接在终端输入`source ~/.zshrc`新增配置会立即生效
	
- 安装node

	```bash
	nvm install v8.9.0
	```
 
- nvm 常用命令
	- nvm install <version> 安装指定版本
	- nvm uninstall <version> 卸载已安装的node版本
	- nvm use <version> 切换已安装的node版本
	- nvm ls 列出本机已安装的node版本
	- nvm ls-remote 列出所有远程服务器可安装的node版本
	- nvm current 显示当前正在用的node版本
	- nvm alias default v8.9.0 默认node版本
	- nvm alias <name> <version> 给不用的node版本添加别名
	- nvm unalias <name>  ## 删除已定义的别名
	
