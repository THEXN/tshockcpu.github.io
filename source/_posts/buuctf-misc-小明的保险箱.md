---
title: BUUCTF-Misc-小明的保险箱
tags:
  - misc
  - 学习
id: '316'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - misc
  - - 学习
date: 2022-11-17 20:23:58
---

下载附件，得到一张图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/4a81409d-f24b-4915-adc9-304e6faf60f2.jpg)

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20201120.jpg)

这不就是010打开分离压缩包最后直接爆破吗？

但是实际操作发现，根本不知道哪个是文件头

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20201633.jpg)

于是我打开了kali，使用foremost对其进行分离

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20202102.jpg)

然后就密码爆破

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20202250.jpg)

密码7869

```
flag{75a3d68bf071ee188c418ea6cf0bb043}
```