---
title: BUUCTF-snake
tags:
  - misc
  - 学习
id: '728'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - C语言
  - - 学习
date: 2023-02-25 15:17:55
---

下载附件

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/snake/snake.jpg)

是蛇蛇！

咳咳，图片题，先看属性后看lsb，没有就010打开

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/snake/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-25%20145605.jpg)

PK？

很明显，里面藏了个zip文件，使用binwalk或foremost或手动分离出来

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/snake/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-25%20145829.jpg)

这是什么奇怪的文件

用记事本打开cipher会显示乱码，key的话会有一串编码

key：

```
V2hhdCBpcyBOaWNraSBNaW5haidzIGZhdm9yaXRlIHNvbmcgdGhhdCByZWZlcnMgdG8gc25ha2VzPwo=
```

一眼base64解码，得到：

```
What is Nicki Minaj's favorite song that refers to snakes?
```

我不懂洋文，翻译得：

```
妮琪·米娜最喜欢的提到蛇的歌曲是什么
```

？？？？？？？？？？？？？？？？？？？

百度查了一下，是`anaconda`

再查了下`anaconda`出什么都没发现，我直接凌乱了

看了别人的博客才知道，对于蛇这个词，在英语中还有一个翻译做：Serpent。  
Serpent是一个加密算法,anaconda就是它的key吧

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/snake/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-25%20151501.jpg)

网站链接：[http://serpent.online-domain-tools.com/](http://serpent.online-domain-tools.com/)

```
flag{who_knew_serpent_cipher_existed}
```