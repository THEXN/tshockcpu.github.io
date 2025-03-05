---
title: BUUCTF-Misc-九连环
tags:
  - misc
  - 学习
id: '466'
categories:
  - [学习,ctf,misc]
date: 2022-11-27 21:27:36
---

下载附件，得到一张图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/123456cry.jpg)

先看属性，没有，lsb，没有。010打开

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20210748.jpg)

嗯？

打开kali，foremost分离

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20210944.jpg)

但是他被锁了

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20211114.jpg)

孩子文件打不开，多半是伪加密吧

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20211419.jpg)

解压出来一张图片加一个压缩包，压缩包内有个flag.txt，那么按道理压缩包密码就呆在图片里

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/good-%E5%B7%B2%E5%90%88%E5%B9%B6.jpg)

这是解压出来的图片

这个采用了steghide隐写，我也不知道原理但是知道用法

```
steghide extract -sf test.jpg -p 123456
#-sf  参数
#test.jpg  图片名称
#-p 密码参数，后面空格跟密码，无密码可不加参数，回车就好
分离
```

我们用`steghide extract -sf good-已合并.jpg`

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20212340.jpg)

...？有没有一种可能，我不知道他是什么编码，不过有`bV1g6t5wZDJif^J7`就够了？

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20212648.jpg)

果然密码就是`bV1g6t5wZDJif^J7`

```
flag{1RTo8w@&4nK@z*XL}
```