---
title: BUUCTF-Misc-你竟然赶我走
tags:
  - misc
  - 学习
id: '164'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - misc
  - - 学习
date: 2022-11-13 19:47:51
---

下载附件，得到一张图片biubiu.jpg

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E4%BD%A0%E7%AB%9F%E7%84%B6%E8%B5%B6%E6%88%91%E8%B5%B0/biubiu.jpg)

图片题第一步是查看属性，无果，lsb隐写，也没有，那么接下来用010打开，拉到最后面

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E4%BD%A0%E7%AB%9F%E7%84%B6%E8%B5%B6%E6%88%91%E8%B5%B0/image-6-1024x699.png)

轻易地发现了flag

```
flag{stego_is_s0_bor1ing}
```