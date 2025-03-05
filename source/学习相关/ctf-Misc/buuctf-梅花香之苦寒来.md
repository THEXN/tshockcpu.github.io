---
title: BUUCTF-梅花香之苦寒来
tags:
  - misc
  - 学习
id: '756'
categories:
  - - '%e5%ad%a6%e4%b9%a0'
    - misc
  - - 学习
date: 2023-03-02 20:54:28
---

下载附件

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E6%A2%85%E8%8A%B1%E9%A6%99%E4%B9%8B%E8%8B%A6%E5%AF%92%E6%9D%A5/meihuai.jpg)

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E6%A2%85%E8%8A%B1%E9%A6%99%E4%B9%8B%E8%8B%A6%E5%AF%92%E6%9D%A5/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20204417.jpg)

？

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E6%A2%85%E8%8A%B1%E9%A6%99%E4%B9%8B%E8%8B%A6%E5%AF%92%E6%9D%A5/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20204806.jpg)

这是啥？？？

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E6%A2%85%E8%8A%B1%E9%A6%99%E4%B9%8B%E8%8B%A6%E5%AF%92%E6%9D%A5/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20204927.jpg)

坐标？

试试matplotlib

```
import matplotlib.pyplot as plt
import numpy as np
x, y = np.loadtxt('./ascii.txt', delimiter=',', unpack=True)
plt.plot(x, y, '.')
plt.show()
```

记得ascii里坐标要把括号都去掉

![](https://pic.niaoluo.top/%E7%BD%91%E7%AB%99%E8%B0%83%E7%94%A8/misc%E9%9C%80%E8%A6%81/%E7%AC%AC%E4%BA%8C%E9%A1%B5/%E6%A2%85%E8%8A%B1%E9%A6%99%E4%B9%8B%E8%8B%A6%E5%AF%92%E6%9D%A5/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202023-03-02%20205241.jpg)

```
flag{40fc0a979f759c8892f4dc045e28b820}
```