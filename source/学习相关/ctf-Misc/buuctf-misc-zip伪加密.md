---
title: BUUCTF-Misc-zip伪加密
tags:
  - misc
  - 学习
id: '207'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - misc
  - - 学习
date: 2022-11-13 21:08:43
---

下载附件，题目提示是zip伪加密，伪加密简单来说就是你看他好像加密了，但是实际上他死通过修改16进制文件，让解压器以为他是个加密文件，从而导致显示加密，这时候不论你拿多牛逼的字典也破解不了

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-zip%E4%BC%AA%E5%8A%A0%E5%AF%86/image-21-1024x613.png)

需要用010打开，并且拉倒最下面，看到后面的PK，让4B为第一位，向后数8位，就是判断文件是否加密的地方之一了，通常伪加密就是通过修改这里，将01修改为00，保存

。。。你以为是这样？谁说我只能改最下面的PK来进行伪加密了？

真正要改得是中间那个PK的以4B为第一位第8位将01修改为00，保存

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-zip%E4%BC%AA%E5%8A%A0%E5%AF%86/image-22-1024x803.png)

```
flag{Adm1N-B2G-kU-SZIP}
```