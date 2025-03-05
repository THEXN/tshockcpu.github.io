---
title: BUUCTF-Misc-另外一个世界
tags:
  - misc
  - 学习
id: '343'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - misc
  - - 学习
date: 2022-11-18 20:09:41
---

下载附件，得到一张图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/monster.jpg)

又是图片题啊（思索）

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-18%20195104.jpg)

康康我发现了什么！一串二进制！

01组合能是什么？摩斯码/2进制转换

当时没想到，后面做了同样类型的题才知道方法

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-18%20200402.jpg)

先转16进制

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-18%20200701.jpg)

再转到ascii

**转换网站：[https://coding.tools/cn/hex-to-ascii](https://coding.tools/cn/hex-to-ascii)**

```
flag{koekj3s}
```