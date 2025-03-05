---
title: BUUCTF-Misc-数据包中的线索
tags:
  - misc
  - 学习
id: '372'
categories:categories:
  - [学习,ctf,misc]
date: 2022-11-25 21:02:33
---

下载附件，看名字就知道是流量分析题，打开kali，打开wireshark

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-25%20204838.jpg)

对HTTP流进行追踪

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-25%20205120.jpg)

嘶...看起来像base64转图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-25%20205808.jpg)

我去，路飞

```
flag{209acebf6324a09671abc31c869de72c}
```