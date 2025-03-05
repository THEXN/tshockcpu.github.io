---
title: BUUCTF-Misc-LSB
tags:
  - misc
  - 学习
id: '201'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - misc
  - - 学习
date: 2022-11-13 20:55:38
---

下载附件，题目明明白白的提示了你是老色逼（lsb）隐写

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-LSB/flag11.png)

那么就StegSolve打开

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-LSB/image-18.png)

上面的通道有很明显的问题

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-LSB/image-19-1024x733.png)

果然，有张图片藏在里面了，Save bin保存为png图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-LSB/image-20-1024x860.png)

得到一张二维码，扫描得到cumtctf{1sb\_i4\_s0\_Ea4y}

```
flag{1sb_i4_s0_Ea4y}
```