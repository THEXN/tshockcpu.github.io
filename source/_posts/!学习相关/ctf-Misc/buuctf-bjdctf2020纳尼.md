---
title: BUUCTF-[BJDCTF2020]纳尼
tags:
  - misc
  - 学习
id: '754'
categories:
  - [学习,ctf,misc]
date: 2023-03-02 20:28:14
---

下载附件，一个txt一个gif

txt写的是：`咦！这个文件怎么打不开？`

我估计是出题老哥改了文件头啥的，010打开看看

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BBJDCTF2020%5D%E7%BA%B3%E5%B0%BC/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20201831.jpg)

果然，把GIF的头文件补好

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BBJDCTF2020%5D%E7%BA%B3%E5%B0%BC/6.gif)

```
Q1RGe3dhbmdfYmFvX3FpYW5nX2lzX3NhZH0==
```

```
转换后为：CTF{wang_bao_qiang_is_sad}
```

```
flag{wang_bao_qiang_is_sad}
```