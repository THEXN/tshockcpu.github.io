---
title: BUUCTF-Misc-面具下的flag
tags:
  - misc
  - 学习
id: '463'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - misc
  - - 学习
date: 2022-11-27 21:03:25
---

下载附件，得到一张图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/mianju.jpg)

君の名は

图片题先看属性后lsb，啥都没看出来，用万能的010打开

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20201525.jpg)

康康我发现了什么，看起来藏了个压缩包，这个手动分离不太好操作，于是打开kali，用foremost -T指令进行分离，得到一个压缩包

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20202128.jpg)

但是他有密码（恼

先010打开，发现是伪加密

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20202447.jpg)

改成00

得到一个vmdk文件，这里显示了在虚拟机能打开

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20202720.jpg)

但是我之前实际操作没能正确打开，隐约记得这好像是个磁盘类文件，应该可以用foremost?

好吧并不能，于是我找到了虚拟机的磁盘目录，把这个文件丢了进去，也没弄出来

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20203803.jpg)

等等...我记得好像7-zip能分离它

```
7z x 
```

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20204946.jpg)

有两个文件夹

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20205040.jpg)

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20205154.jpg)

这几把是什么

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20205309.jpg)

这个我熟，脑交是吧（？

网站：https://www.splitbrain.org/services/ook

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20205810.jpg)

咋只有一半

找到另一个文件夹

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20210001.jpg)

这个好像也是brainfuck

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-11-27%20210205.jpg)

开香槟喽

```
flag{N7F5_AD5_i5_funny!}
```