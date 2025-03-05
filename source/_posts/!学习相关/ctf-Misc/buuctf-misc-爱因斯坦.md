---
title: BUUCTF-Misc-爱因斯坦
tags:
  - misc
  - 学习
id: '318'
categories:
  - [学习,ctf,misc]
date: 2022-11-17 20:51:02
---

下载附件，得到一张图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%88%B1%E5%9B%A0%E6%96%AF%E5%9D%A6.jpg)

（smgb）

图片题，老规矩，先看属性再lsp，在发现了这个

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20204705.jpg)

this\_is\_not\_password

意思是不是密码，当然也不是flag，于是010打开

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20203038.jpg)

康康我找到了什么！

手动分离得到一个压缩包，打开却发现...

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20203216.jpg)

因为没有其他任何提示，那就只能想到爆破或者伪加密两条路，爆破半天啥都没有，伪加密也没弄出什么来

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-17%20203614.jpg)

尝试修改伪加密ing

想到了之前的this\_is\_not\_password，说不定是密码?结果还真是...

```
flag{dd22a92bf2cceb6c0cd0d6b83ff51606}
```