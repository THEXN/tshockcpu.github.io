---
title: Misc技术分享
tags:
  - misc
  - 学习
id: '557'
categories:
  - [学习,ctf,misc]
date: 2022-12-27 16:05:18
---

\-2022年12月27日

## 知识点

1.  图片隐写、修复、分离（比如lsb）
2.  字符串类、进制转换（其实这跟密码学的关系可能会更大）
3.  音频和视频隐写（比如MP3stone）
4.  数据包分析（也叫做流量分析题）
5.  内存取证（我暂时不了解）
6.  游戏隐写（我几乎每次都是玩出来的）
7.  被webshell后门的文件分析

## 工具和网站与技术分享

misc审题是很重要的。出题者很有可能把关键信息藏在题目里，比如

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202022-12-27%20151928.jpg)

如果不看题目，绝对想不到跟F5有关系，题目中的刷新就提示了这题跟F5有关系

* * *

misc用到的工具多并且杂，包括但是不限于

010 editor

binwalk和foremost （文件分离）

steghide （文件隐藏到图片或音频中的工具）

stegsolve （图片lsb隐写）

tweakpng （图片检查，CRC，高宽）

zsteg （LSB图片隐写）

clocked-pixel （带密码的lsb图片隐写）

strings （查找字符串）

silenteye （隐写）

F5-steganography （图片加解密）（java Extract 图片的绝对路径/图片.jpg -p 密码）

outguess （图片加解密）（outguess -k "密码" -r out.jpg flag.txt）

wireshark(流量分析)

MP3stone（MP3音频隐写）（Decode -X 歌曲.mp3 -P 密码）

Audacity（音频分析）

360（被webshell后门的文件分析神器）

网站：

[CyberChef](https://ctf.mzy0.com/CyberChef3/)

其他

## 例题

[BUUCTF-Misc-九连环](https://niaoluo.top/2022/11/27/buuctf-misc-%e4%b9%9d%e8%bf%9e%e7%8e%af/)