---
title: 第一个C++程序的编写（命名空间）
tags:
  - C++
  - 学习
id: '779'
categories:
  - [学习,C++]
date: 2023-04-20 20:19:49
---

经典的输出"Hello World" 

与C语言相同，首先要包含一个头文件，在C++中，标准输入输出头文件为：`iostream`

```
#include <iostream>
```

接下来，写入命名空间。命名空间可以用来解决命名冲突问题，而且在C++中，标准的命名空间为：`std`

```
using namespace std
```

命名空间当然分为标准命名空间（如std）和自定义命名空间，我们通过以下代码实现自定义命名空间

```
namespace lib//定义命名空间lib
{
void fun()
{
}//命名空间内定义的函数
}
```

哪该如何使用命名空间内的元素呢？通常来说有三种方式

*   使用`命名空间::元素`来指定命名空间内的元素，例如：在屏幕上输出数据且换行，就要使用到`std`命名空间内的`cout`和`endl`

```
std::cout<<"Hellow World"::std::endl;
```

*   使用`using`语句应用命名空间元素，例如和刚刚相同的

```
using std::cout;//使用std内元素cout
cout<<"Hellow World";
//需要注意，这里只引用了cout元素，endl元素仍然要写成std::endl
```

*   使用`using`语句直接引用命名空间，这样就默认使用该命名空间内的元素

```
using namespace std;
```

特殊知识：匿名命名空间

```
namespace
{
}
```

编译器在编译阶段会为匿名命名空间生成唯一的名字，该名字不可见。匿名命名空间的作用是限制命名空间的内容仅能被当前源文件使用，其他源文件是无法访问的，使用extern声明访问也无效

* * *

第一个C++程序：

```
#include <iostream>
using namespace std;
int main()
{
cout<<"Hellow World"<<endl;
return 0;//C++必须有个返回值！！！
}
```

命名空间的使用：

```
#include<iostream>
#include<iomanip>
using namespace std;

namespace x
{
        int a;
}
namespace y
{
        int power(int x)
        {
             return x*x;
        }
}//定义名字空间 x，y，定义变量a和函数power(..),输出
a的平方值

int main()
{
cin >> x::a;
cout << y::power(x::a) << endl;
return 0;
}
```