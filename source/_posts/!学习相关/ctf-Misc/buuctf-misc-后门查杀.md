---
title: BUUCTF-Misc-后门查杀
tags:
  - misc
  - 学习
id: '450'
categories:
  - [学习,ctf,misc]
date: 2022-11-25 21:13:54
---

下载附件，得到的好像是一堆搭建网站用的文件，我们看眼题目

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-25%20210608.jpg)

下载这个附件的时候，我的360直接把里面其中一个文件杀掉了，于是我发现了不对，干脆360扫描了一下

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-25%20211000.jpg)

不得不承认，360的能力是毋庸置疑的。找到对应文件并且打开

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-25%20211247.jpg)

```
flag{6ac45fb83b3bc355c024f5034b947dd3}
```