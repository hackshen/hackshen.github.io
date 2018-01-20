---
title: Gulp-Livereload
date: 2017-07-19 18:12:13
categories: Gulp
tags: 
- gulp
- livereload 
---
## 简介：
 **gulp-liereload是一个监听的文件发生改变时，浏览器会自动加载修改的文件，帮你自动刷新网页，彻底解放F5** 

### 1、本地安装：
```bash
	npm install gulp -g
	npm install gulp -D  
	npm install gulp-less -D
	npm install gulp-livereload -D
```

### 2、配置gulpfile.js
```javascript
var gulp = require('gulp'), //引入gulp
    less = require('gulp-less'), //引入less
    livereload = require('gulp-livereload'); //引入livereload
 
gulp.task('less', function() { //建一个less任务
    gulp.src('src/less/*.less') //选择src/less/下面所有已less结尾的文件
        .pipe(less()) //编译less
        .pipe(gulp.dest('src/css')) //编译后传到src/css目录下
        .pipe(livereload()); //加载修改的文件
});
gulp.task('watch', function() { //新建一个watch任务
    livereload.listen();  
    gulp.watch('src/less/**/*.less', ['less']); //监听src/less下的less是否改变，然后执行less任务
    gulp.watch('src/**/*.*', function(event) {
        livereload.changed(event.path); //把修改文件的路径输出到控制台
    });
});
```
### 3、安装chrome插件

```javascript
在谷歌商店里面搜索livereload下载并安装  
```

### 4、执行任务

- 在当前目录打开命令行输入 gulp watch
- 然后在浏览器打开你的网页地址，必须以服务的形式打开比如：localhost/xx.html然后激活刚才安装的插件，（鼠标点击一下，里面的圆点变为实心即可）
- 这时你就可以快乐的写代码了

