---
title: BUUCTF-Misc-ningen
tags:
  - misc
  - 学习
id: '227'
categories:categories:
  - [学习,ctf,misc]
date: 2022-11-17 20:10:21
---

下载附件，得到一张图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/9e3ec8c2-38c7-41cf-b5d7-abe7872de4c3%20(1).jpg)

根据提示，猜测里面藏了压缩包，而且密码为4位数字

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20195916.jpg)

使用010打开分离压缩包

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20200706.jpg)

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20200403.jpg)

直接爆破

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20200851.jpg)

密码8368

```
flag{b025fc9ca797a67d2103bfbc407a6d5f}
```