---
title: BUUCTF-Misc-大白
tags:
  - misc
  - 学习
id: '170'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - misc
  - - 学习
date: 2022-11-13 20:05:42
---

下载附件，得到一个大白(●—●)

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E4%BD%A0%E7%AB%9F%E7%84%B6%E8%B5%B6%E6%88%91%E8%B5%B0/image-7.png)

甚至不需要CRC爆破，一眼就感觉到这个图片少一截，马上用010打开，010也提示CRC不对劲，我们同时看到上方我用绿色标记出来的16个数

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E4%BD%A0%E7%AB%9F%E7%84%B6%E8%B5%B6%E6%88%91%E8%B5%B0/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE-2022-11-13-195328-1024x652.jpg)

这其中，前8个数与宽度有关，后8个数与高度有关，一般通过修改前8位的后四位和后8位的后四位来改变高宽，这里明显是高度被修改了，我将后8位的后四位改成0200，保存

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E4%BD%A0%E7%AB%9F%E7%84%B6%E8%B5%B6%E6%88%91%E8%B5%B0/image-8-1024x721.png)

```
flag{He1l0_d4_ba1}
```