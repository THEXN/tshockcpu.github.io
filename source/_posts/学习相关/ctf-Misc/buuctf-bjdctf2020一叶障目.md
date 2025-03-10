---
title: BUUCTF-[BJDCTF2020]一叶障目
tags:
  - misc
  - 学习
id: '748'
categories:
  - [学习,ctf,misc]
date: 2023-02-28 21:51:37
---

下载附件，是一张图片

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BBJDCTF2020%5D%E4%B8%80%E5%8F%B6%E9%9A%9C%E7%9B%AE/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-28%20205841.jpg)

发现CRC不匹配，我猜是改了高宽

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BBJDCTF2020%5D%E4%B8%80%E5%8F%B6%E9%9A%9C%E7%9B%AE/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-28%20211402.jpg)

稍微改改高宽

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BBJDCTF2020%5D%E4%B8%80%E5%8F%B6%E9%9A%9C%E7%9B%AE/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-28%20212336.jpg)

更好的方法是CRC修复脚本（搬运的）

```
#coding=utf-8
import zlib
import struct
#读文件
file = '1.png'  #注意，1.png图片要和脚本在同一个文件夹下哦~
fr = open(file,'rb').read()
data = bytearray(fr[12:29])
crc32key = eval(str(fr[29:33]).replace('\\x','').replace("b'",'0x').replace("'",''))
#crc32key = 0xCBD6DF8A #补上0x，copy hex value
#data = bytearray(b'\x49\x48\x44\x52\x00\x00\x01\xF4\x00\x00\x01\xF1\x08\x06\x00\x00\x00')  #hex下copy grep hex
n = 4095 #理论上0xffffffff,但考虑到屏幕实际，0x0fff就差不多了
for w in range(n):#高和宽一起爆破
    width = bytearray(struct.pack('>i', w))#q为8字节，i为4字节，h为2字节
    for h in range(n):
        height = bytearray(struct.pack('>i', h))
        for x in range(4):
            data[x+4] = width[x]
            data[x+8] = height[x]
            #print(data)
        crc32result = zlib.crc32(data)
        if crc32result == crc32key:
            print(width,height)
            #写文件
            newpic = bytearray(fr)
            for x in range(4):
                newpic[x+16] = width[x]
                newpic[x+20] = height[x]
            fw = open(file+'.png','wb')#保存副本
            fw.write(newpic)
            fw.close
```

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%5BBJDCTF2020%5D%E4%B8%80%E5%8F%B6%E9%9A%9C%E7%9B%AE/1.png.png)

```
flag{66666}
```