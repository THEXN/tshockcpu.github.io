---
title: BUUCTF-Misc-基础破解
tags:
  - misc
  - 学习
id: '188'
categories:
  - [学习,ctf,misc]
date: 2022-11-13 20:31:24
---

下载附件，根据提示，四位数密码，直接ARCHPR暴力破解

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E5%9F%BA%E7%A1%80%E7%A0%B4%E8%A7%A3/image-12.png)

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E5%9F%BA%E7%A1%80%E7%A0%B4%E8%A7%A3/image-13.png)

密码2563

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E5%9F%BA%E7%A1%80%E7%A0%B4%E8%A7%A3/image-14-1024x571.png)

打开后是一串base64编码，丢去解码得到flag

```
flag{70354300a5100ba78068805661b93a5c}
```