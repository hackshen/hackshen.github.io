---
title: sublime 注册码失效
date: 2018-05-24 09:59:45
tags:
---

> 关于sublime注册码失效问题

- 起因：早上Mac重启后打开sublime提示注册码失效
- 本机环境：MacOs(0.12.6 )、sublime 3.0 build 3143
- Google了一波，是因为sublime 3.1更改了验证方法
- 解决办法host文件添加以下解析：

    ```bash
    #-----解决sublime 注册码失效-----
    127.0.0.1 license.sublimehq.com
    127.0.0.1 45.55.255.55
    127.0.0.1 45.55.41.223
    #------------------------------
    ```
    Mac host地址：`/etc/hosts`
    
>可用注册码(3143版本均可使用。)：

```
----- BEGIN LICENSE -----
eldon
Single User License
EA7E-1122628
C0360740 20724B8A 30420C09 6D7E046F
3F5D5FBB 17EF95DA 2BA7BB27 CCB14947
27A316BE 8BCF4BC0 252FB8FF FD97DF71
B11A1DA9 F7119CA0 31984BB9 7D71700C
2C728BF8 B952E5F5 B941FF64 6D7979DA
B8EB32F8 8D415F8E F16FE657 A35381CC
290E2905 96E81236 63D2B06D E5F01A69
84174B79 7C467714 641A9013 94CA7162
------ END LICENSE ------
```

