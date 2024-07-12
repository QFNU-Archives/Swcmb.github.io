---
title: C++的类
date: 2024-03-20 15:26:18
tags: 曲园
category: CodeWorld
---



## array_max.h

```c++
//array_max.h

#include &lt;bits/stdc++.h&gt;
using namespace std;
class Array_max
{
	public:
		void set_value()
		{
			for(int i=0;i&lt;10;i++)
			{
				cin&gt;&gt;array[i];
			}
		};
		void max_value()
		{
			max=array[0];
			for(int i=0;i&lt;10;i++)
			{
				if(array[i]&gt;max)max=array[i];
			}
		};
		void show_value()
		{
			cout&lt;&lt;"max="&lt;&lt;max;
		};
	private:
		int array[10];
		int max;
};
```

## array_max.cpp

```c++
//array_max.cpp

#include &lt;iostream&gt;

#include "array_max.h"
/* run this program using the console pauser or add your own getch, system("pause") or input loop */
using namespace std;
int main(int argc, char *argv[]) {
	Array_max arrmax;
	arrmax.set_value();
	arrmax.max_value();
	arrmax.show_value();
	return 0;
}
```

这段代码展示了一个名为Array_max的类的定义和使用。该类具有以下知识点：

1. 类定义：使用关键字"class"来定义一个类，后面跟着类名Array_max。
2. 访问修饰符：在类中定义的成员变量和成员函数可以有不同的访问权限。在这里，array和max是私有成员变量，set_value、max_value和show_value是公有成员函数。
3. 构造函数：类的构造函数用于初始化对象的状态。在这个例子中，没有显式地定义构造函数，所以编译器会自动生成默认的构造函数。
4. 成员函数：类的成员函数用于执行特定的操作。在这个例子中，有三个成员函数：set_value用于设置数组的值，max_value用于计算最大值，show_value用于显示最大值。
5. 循环语句：for循环用于遍历数组并执行相应的操作。在这里，使用了两个for循环，分别用于输入数组的值和计算最大值。
6. 条件语句：if语句用于比较数组中的每个元素与当前最大值的大小关系，如果大于当前最大值，则更新最大值。
7. 输入输出流：cin用于从标准输入读取数据，cout用于向标准输出打印数据。
8. 头文件包含：使用#include指令将所需的头文件包含到源代码中。这里包含了<bits/stdc++.h>和<iostream>头文件。
9. 命名空间：使用namespace std来引入标准库的命名空间，以便可以直接使用其中的函数和对象。
10. 主函数：main函数是程序的入口点，它创建了一个Array_max对象arrmax，并调用其成员函数来设置数组的值、计算最大值并显示结果。

通过这个示例代码，我们可以了解到如何定义一个类、创建对象、调用成员函数以及实现一些基本的功能。
