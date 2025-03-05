---
title: BUUCTF-Misc-假如给我三天光明
tags:
  - misc
  - 学习
id: '349'
categories:categories:
  - [学习,ctf,misc]
date: 2022-11-18 21:30:51
---

下载附件，得到一张图片和一个music压缩包，有密码，那密码应该藏在图片里，于是看图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/pic.jpg)

海伦·凯勒？盲文加密√

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/v2-18124e988d75cd23bbabb4e404d01a53_b.png)

对照得到：kmdonowg

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-18%20211425.jpg)

手搓莫斯码：

```
-.-. - ..-. .-- .--. . .. ----- ---.. --… …-- ..--- ..--.. ..--- …-- -.. --..
```

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-18%20211714.jpg)

直接填没用，先去掉ctf再全改小写

```
flag{wpei08732?23dz}
```