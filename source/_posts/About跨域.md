---
title: About跨域
date: 2017-07-18 12:22:47
categories: 
- Javascript
tags: 
- 跨域
---
## 1、Ajax + PHP 跨域问题（服务端方案）

```javascript
1、指定域名(http://www.aipay.org),只需要在请求的文件头中添如下代码

	header('Access-Control-Allow-Origin:http://www.aipay.org');
	
2、允许所有域名都可以访问,只需要在请求的文件头中添如下代码

	header('Access-Control-Allow-Origin:*'); 
```
## 2、Ajax + PHP 跨域问题（通过客户端解决方案）
```javascript
1.PHP代码：
	<?php 
	$cb=$_GET['callback'];
	echo $cb.'({"name":"张三"})';
	?>
2.HTML代码：
	<script src="http://cdn.bootcss.com/jquery/2.1.0-rc1/jquery.js"></script>
	<script>
		$.getJSON('http://www.aipay.org/jsops/jsonp.php?callback=?',function(data){
				console.log(data)
			});	
	</script>
```
## 3、JSONP解决跨域问题


**方案一：**  通过getJSON,?后面会生成一个jQuery开头的随机函数名如
```javascript
jQuery210101981845619370246_1500012205578如果我们想自己定义函数名呢看方案二
<script src="http://cdn.bootcss.com/jquery/2.1.0-rc1/jquery.js"></script>
<script>
    $.getJSON('http://sug.music.baidu.com/info/suggestion?      format=json&word=ni&version=2&from=0&callback=?',function(data){
		console.log(data)
	 })
</script>
```
**方案二：**
```javascript
自定义函数名
<script src="http://cdn.bootcss.com/jquery/2.1.0-rc1/jquery.js"></script>
<script>
	$.ajax({
		url:'http://sug.music.baidu.com/info/suggestion?format=json&word=ni&version=2&from=0&callback=?',
		dataType:'jsonp',
		jsonpCallback:'test', //自定义回调的函数名
		success:function(response){
			console.log(response)
		}
	})
</script>
```
	
## 4、用原生方法解决跨域问题 
```javascript
<script>
	var script = document.createElement('script'); 
		script.src='http://sug.music.baidu.com/info/suggestion?format=json&word=ni&version=2&from=0&callback=baidu';
		document.body.appendChild(script);
		function baidu(data){
			console.log(data);
		}
</script>	
```

