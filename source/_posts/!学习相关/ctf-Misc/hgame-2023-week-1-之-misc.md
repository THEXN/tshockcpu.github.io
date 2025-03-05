---
title: HGAME 2023 Week 1 之 misc
tags: []
id: '612'
categories:
  - [学习,ctf,misc]
date: 2023-01-13 01:00:00
---

## Sign In

给了一串base64，解开得到flag

```
aGdhbWV7V2VsY29tZV9Ub19IR0FNRTIwMjMhfQ==
```

flag

```
hgame{Welcome_To_HGAME2023!}
```

## Where am I

题目描述：

> 兔兔回家之前去了一个神秘的地方，并拍了张照上传到网盘，你知道他去了哪里吗？ flag格式为: hgame{经度时\_经度分\_经度秒\_东经(E)/西经(W)\_纬度时\_纬度分\_纬度秒\_南纬(S)/北纬(N)}，秒精确到小数点后两位 例如: 11°22'33.99''E, 44°55'11.00''S 表示为 hgame{11\_22\_3399\_E\_44\_55\_1100\_S}

下载附件，得到一个流量包

由于惯性思维，我使用了foremost对其进行分离，再对其进行rar伪加密修复，但是解压出来的图片是损坏的，在学长的提示后，我使用了纯手动分离

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-08%20202732.jpg)

导出http流

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-08%20203236.jpg)

打开会发现损坏，猜测为rar伪加密

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-08%20203413.jpg)

010打开，先去除冗余

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-08%20203647.jpg)

再修改第二十四位为0

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-08%20203922.jpg)

解压出来的图片是全黑的，但是没有关系，使用在线exif信息查看器

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-08%20204438.jpg)

最后根据提示写出flag

```
hgame{116_24_1148_E_39_54_5418_N}
```

## 神秘的海报

下载附件，得到一张图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/secret.png)

既然是图片题，那就老思路：先属性再lsb，010看眼后进行分离

然后发现了这些

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-08%20205038.jpg)

> Sure eno ugh, you still remember what we talked about at that time! This is part of the secret: `hgame{U_ Kn0w_LSB&W`.I put the rest of the content here, https://drive.go ogle.com/file/d/ 13kBos3Ixlfwkf3e 0z0kJTEqBxm7RUk- G/view?usp=sharing, if you direc tly access the google drive cloud disk download in China, it wil l be very slow, you can try to use Scientific In ternet access solves the problem of slowor inac cessible  
> access to external netw ork resources. This is my favori te music, there is another part of the secret in the music, I use Steghide to en crypt, the password is also the 6-digit password we agreed at th e time, even if someone else finds out here, it should not be so easy to crack ( ( hope s
> 
> 翻译为：当然呃，你还记得我们当时谈过什么！这是秘密的一部分：“hgame{U\_ Kn0w\_LSB&W”。我把其余的内容放在这里，https://drive.go ogle.com/file/d/ 13kBos3Ixlfwkf3e 0z0kJTEqBxm7RUk- G/view？usp=sharing，如果你直接访问谷歌驱动器云盘下载在中国，它会很慢，你可以尝试使用科学的ternet访问解决了慢或无法解决问题的问题  
> 访问外部网络或资源。这是我最喜欢的音乐，音乐中还有另一部分秘密，我用Steghide来加密，密码也是我们当时同意的6位数密码，即使别人在这里发现，也应该没那么容易破解（希望

去网站上下载得到一首音乐，根据提示是steghide隐写，所谓的密码应该是123456

```
steghide extract -sf /root/桌面/Bossanova.wav -p 123456
```

得到另一半flag

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-08%20210821.jpg)

做的过程中，出现过steghide成功分离后，flag.txt文件内没有任何信息的情况，问题应该是在将文件传递到虚拟机的过程中丢失了信息

```
hgame{U_Kn0w_LSB&Wav^Mp3_Stego}
```

## e99p1ant\_want\_girlfriend

下载附件，得到一张图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-08%20211735.jpg)

根据提示，应该是高宽隐写

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/%E9%AB%98%E5%AE%BD.jpg)

得到flag

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/HGAME%202023%20Week%201%20%E4%B9%8B%20misc/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-01-08%20211946.jpg)

```
hgame{e99p1ant_want_a_girlfriend_qq_524306184}
```