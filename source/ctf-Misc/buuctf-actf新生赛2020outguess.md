---
title: BUUCTF-[ACTF新生赛2020]outguess
tags: []
id: '761'
categories:
  - - 学习
date: 2024-03-01 20:08:43
---

下载附件，文件有点多

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BACTF%E6%96%B0%E7%94%9F%E8%B5%9B2020%5Doutguess/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-04%20105053.jpg)

一个一个来看吧

tmp\\huhuhu\\.\_flag.txt:

```
    Mac OS X               2   ?      ?                                      ATTR       ?   ?   <                  ?   <  com.apple.quarantine q/0081;5e60c672;Chrome;5607DE04-806B-4C94-87EC-A563A75AD25C 
```

tmp\\huhuhu\\.\_mmm.txt:

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BACTF%E6%96%B0%E7%94%9F%E8%B5%9B2020%5Doutguess/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-04%20105505.jpg)

?这两不是一个样吗

flag.txt

```
flag在哪？
你Guess一下啊！
```

看题目可知这题需要outguess，但是我们不知道密码是什么

mmm.jpg

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BACTF%E6%96%B0%E7%94%9F%E8%B5%9B2020%5Doutguess/mmm.jpg)

继续看，下面有其他文件是重复的，不写进来了

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BACTF%E6%96%B0%E7%94%9F%E8%B5%9B2020%5Doutguess/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-04%20110444.jpg)

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BACTF%E6%96%B0%E7%94%9F%E8%B5%9B2020%5Doutguess/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-04%20110629.jpg)

社会主义核心价值观加密/解密

```
abc
```

不是压缩包的密码，想必是outguess的密码

```
outguess -k "abc" -r mmm.jpg mmm.txt
```

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BACTF%E6%96%B0%E7%94%9F%E8%B5%9B2020%5Doutguess/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-04%20111311.jpg)

```
flag{gue33_Gu3Ss!2020}
```

等等？那压缩包里面加密的flag.txt是什么？

试了一下，是个伪加密，内容和上面flag.txt的文件一样