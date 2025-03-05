---
title: BUUCTF-Misc-刷新过的图片
tags:
  - misc
  - 学习
id: '617'
categories:categories:
  - [学习,ctf,misc]
date: 2023-01-10 13:50:55
---

这个题目的标题很重要，明示你是F5隐写（为什么？刷新不是就是F5的意思？）

下载附件，得到一张图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/BUUCTF-Misc-%E8%A2%AB%E5%8A%AB%E6%8C%81%E7%9A%84%E7%A5%9E%E7%A7%98%E7%A4%BC%E7%89%A9/Misc.jpg)

好几把帅！

既然是图片题，那就按照图片题的思路来进行，当然，这题要使用F5隐写

```
java Extract 图片的绝对路径 -p 密码
```

这时候就会有小伙伴疑惑了，密码是什么？

嗯？难道就不能是没有密码吗？

分离出来的文件是这个

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E5%88%B7%E6%96%B0%E8%BF%87%E7%9A%84%E5%9B%BE%E7%89%87/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-10%20134707.jpg)

打开后就知道接下来该怎么操作了，将后缀改为zip，再次打开发现是伪加密

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E5%88%B7%E6%96%B0%E8%BF%87%E7%9A%84%E5%9B%BE%E7%89%87/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-10%20134940.jpg)

修改好后解压打开，得到flag

```
flag{96efd0a2037d06f34199e921079778ee}
```