---
title: BUUCTF-Misc-被劫持的神秘礼物
tags:
  - misc
  - 学习
id: '615'
categories:categories:
  - [学习,ctf,misc]
date: 2023-01-10 13:37:00
---

题目很关键

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/BUUCTF-Misc-%E8%A2%AB%E5%8A%AB%E6%8C%81%E7%9A%84%E7%A5%9E%E7%A7%98%E7%A4%BC%E7%89%A9/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-10%20132635.jpg)

下载附件，拿到一个流量包，丢到kali里面去

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/BUUCTF-Misc-%E8%A2%AB%E5%8A%AB%E6%8C%81%E7%9A%84%E7%A5%9E%E7%A7%98%E7%A4%BC%E7%89%A9/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-10%20133315.jpg)

根据提示，将账号密码串在一起，即

```
adminaadminb
```

然后是32位小写MD5哈希得到flag

```
flag{1d240aafe21a86afc11f38a45b541a49}
```