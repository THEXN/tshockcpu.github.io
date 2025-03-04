---
title: BUUCTF-Misc-二维码
tags:
  - misc
  - 学习
id: '155'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - misc
  - - 学习
date: 2022-11-11 21:41:31
---

下载附件，解压得一个二维码

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E4%BA%8C%E7%BB%B4%E7%A0%81/QR_code.png)

进行在线扫描显示：secret is here（译：秘密就在这里）

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E4%BA%8C%E7%BB%B4%E7%A0%81/image-1-1024x697.png)

这时候先尝试是否有lsb隐写，图片用StegSolve打开，查看通道无果。于是我搬出了万能的010

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E4%BA%8C%E7%BB%B4%E7%A0%81/image-2-1024x736.png)

很明显的看到了PK，说明里面藏了个压缩包，把PK前面的全删除，保存

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E4%BA%8C%E7%BB%B4%E7%A0%81/image-3-1024x816.png)

得到一个加密了的压缩包，不是伪加密，尝试暴力破解，根据内部文件名，4number，也就是四位数密码

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E4%BA%8C%E7%BB%B4%E7%A0%81/image-4.png)

得到密码7639，

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/BUUCTF-Misc-%E4%BA%8C%E7%BB%B4%E7%A0%81/image-5-1024x574.png)

```
flag{vjpw_wnoei}
```