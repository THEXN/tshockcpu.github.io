---
title: BUUCTF-被偷走的文件
tags:
  - misc
  - 学习
id: '726'
categories:
  - [学习,ctf,misc]
date: 2023-02-25 14:51:24
---

看题目，嗯，流量分析题，打开kali，打开wireshark，下载附件（顺带一提，这时候360提醒我：该文件有密码）

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E8%A2%AB%E5%81%B7%E8%B5%B0%E7%9A%84%E6%96%87%E4%BB%B6/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-25%20144130.jpg)

嗯....flag.rar啊

使用高级的（？）`foremost -T` 得到压缩包一个，但是有密码

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E8%A2%AB%E5%81%B7%E8%B5%B0%E7%9A%84%E6%96%87%E4%BB%B6/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-10%20152502.jpg)

但是无所谓，直接给他炸了

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E8%A2%AB%E5%81%B7%E8%B5%B0%E7%9A%84%E6%96%87%E4%BB%B6/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-10%20152733.jpg)

里面就是flag文件

```
flag{6fe99a5d03fb01f833ec3caa80358fa3}
```