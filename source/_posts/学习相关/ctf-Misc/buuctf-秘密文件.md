---
title: BUUCTF-秘密文件
tags:
  - misc
  - 学习
id: '735'
categories:
  - [学习,ctf,misc]
date: 2023-02-26 20:01:30
---

下载附件，流量分析题，打开kali用小鲨鱼打开（不得不提一嘴，360说这玩意有密码）

分析TCP流，看看他说了什么

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E7%A7%98%E5%AF%86%E6%96%87%E4%BB%B6/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-26%20195353.jpg)

思考，拿foremost进行一波分离，拿到一个压缩包，但是有密码

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E7%A7%98%E5%AF%86%E6%96%87%E4%BB%B6/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-26%20200010.jpg)

咕咕咕？咕咕咕咕咕咕！

```
flag{d72e5a671aa50fa5f400e5d10eedeaa5}
```