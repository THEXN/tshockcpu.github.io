---
title: BUUCTF-Misc-被偷走的文件
tags:
  - misc
  - 学习
id: '623'
categories:
  - [学习,ctf,misc]
date: 2023-01-10 15:29:13
---

下载附件，流量分析题，丢到kali里面去，foremost能分离出一个压缩包，但是...

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E8%A2%AB%E5%81%B7%E8%B5%B0%E7%9A%84%E6%96%87%E4%BB%B6/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-10%20152502.jpg)

看起来不像是伪加密，暴力破解一手

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E8%A2%AB%E5%81%B7%E8%B5%B0%E7%9A%84%E6%96%87%E4%BB%B6/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-10%20152733.jpg)

解压打开就得到flag

```
flag{6fe99a5d03fb01f833ec3caa80358fa3}
```