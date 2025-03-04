---
title: BUUCTF-Misc-N种方法解决
tags:
  - misc
  - 学习
id: '177'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - misc
  - - 学习
date: 2022-11-13 20:15:35
---

下载附件，得到一个KEY.exe，第一反应是自己是不是打开了逆向题，果然无法运行。

在Misc的exe，你这exe正不正经呐？

于是，拿010打开后发现一串base64

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-N%E7%A7%8D%E6%96%B9%E6%B3%95%E8%A7%A3%E5%86%B3/image-9-1024x651.png)

根据上面的：data:image/jpg想到，应该是base64转图片

于是找了个base64转图片的网站：https://tool.jisuapi.com/base642pic.html，得到一张二维码

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-N%E7%A7%8D%E6%96%B9%E6%B3%95%E8%A7%A3%E5%86%B3/image-10-1024x580.png)

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-N%E7%A7%8D%E6%96%B9%E6%B3%95%E8%A7%A3%E5%86%B3/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE-2022-11-13-201328.jpg)

```
flag{dca57f966e4e4e31fd5b15417da63269}
```