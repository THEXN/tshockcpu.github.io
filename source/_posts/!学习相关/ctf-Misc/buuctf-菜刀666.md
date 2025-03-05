---
title: BUUCTF-菜刀666
tags:
  - misc
  - 学习
id: '737'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - misc
  - - 学习
date: 2023-02-26 20:41:00
---

下载附件，流量分析题，丢到小鲨鱼里面看看

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E8%8F%9C%E5%88%80666/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-26%20201117.jpg)

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E8%8F%9C%E5%88%80666/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-26%20202447.jpg)

感觉是藏了个文件

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E8%8F%9C%E5%88%80666/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-26%20202935.jpg)

这里非常的突兀

FFD8？把这里单独拎出来弄个文件

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E8%8F%9C%E5%88%80666/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-26%20203736.jpg)

jpg文件？

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E8%8F%9C%E5%88%80666/%E6%97%A0%E6%A0%87%E9%A2%982.jpg)

```
Th1s_1s_p4sswd_!!!
```

foremost分离到一个压缩包

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E8%8F%9C%E5%88%80666/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-02-26%20201436.jpg)

well，you need passwd！

密码就是上面图片的

```
flag{3OpWdJ-JP6FzK-koCMAK-VkfWBq-75Un2z}
```

后来才知道，菜刀是一类题，有兴趣的可以看看这篇文章：

[Webshell工具的流量特征分析（菜刀，蚁剑，冰蝎，哥斯拉）](https://blog.csdn.net/qq_53577336/article/details/125048353)