---
title: BUUCTF-Misc-隐藏的钥匙
tags:
  - misc
  - 学习
id: '322'
categories:
  - [学习,ctf,misc]
date: 2022-11-17 21:34:49
---

下载附件，得到一张图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E9%9A%90%E8%97%8F%E7%9A%84%E9%92%A5%E5%8C%99.jpg)

看属性，看是不是lsb，都不行，010打开，搜索flag

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20213203.jpg)

再base64解码得到flag

```
flag{377cbadda1eca2f2f73d36277781f00a}
```