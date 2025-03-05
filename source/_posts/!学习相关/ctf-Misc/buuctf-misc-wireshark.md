---
title: BUUCTF-Misc-wireshark
tags:
  - misc
  - 学习
id: '193'
categories:categories:
  - [学习,ctf,misc]
date: 2022-11-13 20:40:42
---

下载附件，看到wireshark，是流量分析题，于是我打开虚拟机且启动了kali，并且把文件移动到kali里面直接打开

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-wireshark/image-15-1024x827.png)

虽然是一知半解，但是我对流量分析题的把握就是：筛选，追踪，分离，于是右键，追踪了TCP和HTTP流后发现这个

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-wireshark/image-16-1024x841.png)

要多明显有多明显

```
flag{ffb7567a1d4f4abdffdb54e022f8facd}
```