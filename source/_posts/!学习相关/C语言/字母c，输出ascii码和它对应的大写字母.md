---
title: 字母c，输出ASCII码和它对应的大写字母
tags:
  - C语言
  - 学习
id: '700'
categories:categories:
  - [学习,C语言]
date: 2023-02-21 00:36:53
---

```
/*题目描述

编写程序，输入一个英文小写字母c，输出ASCII码和它对应的大写字母。

输入

一个英文小写字母。

输出

ASCII码和它对应的大写字母(用一个空格分开)。

样例输入

a

样例输出

97 A*/
#include<stdio.h>

void main()

{

char a, b;

printf("输入一个字母:\n");

scanf_s("%c", &a);

printf("%d ", a);

b = a - 32;

printf("%c\n", b);

}
```