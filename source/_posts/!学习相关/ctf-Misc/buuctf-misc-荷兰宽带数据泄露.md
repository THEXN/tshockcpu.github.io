---
title: BUUCTF-Misc-荷兰宽带数据泄露
tags:
  - misc
  - 学习
id: '461'
categories:
  - [学习,ctf,misc]
date: 2022-11-27 20:10:25
---

下载附件，得到一个conf.bin文件，还真不知道这是什么。但是我们抓到了题目的关键字“宽带”。

看了下别人的wb，了解到一款RouterPassView的软件。本身原来是用于找回宽带密码的

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20200417.jpg)

我虽然学日语不懂洋文，但是这种题估计就是找用户名或者密码，那就搜索user或者password。一个一个试，最后发现是

```
      <Username val=053700357621 />
```

这一句

```
flag{053700357621}
```