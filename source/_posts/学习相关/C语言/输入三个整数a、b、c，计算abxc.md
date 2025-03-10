---
title: 输入三个整数a、b、c，计算a+bxc
tags:
  - C语言
  - 学习
id: '673'
categories:
  - [学习,C语言]
date: 2023-02-21 00:11:24
---

```
#include <stdio.h>//预处理
int main()
{

    int a, b, c;

    printf("a=");

    scanf_s("%d", &a);//给a赋值

    printf("b=");

    scanf_s("%d", &b);//给b赋值

    printf("c=");

    scanf_s("%d", &c);//给c赋值

    printf("a+b*c=");

    printf("%d", a + b * c);//输出D

    return 0;//完成该程序

}
```