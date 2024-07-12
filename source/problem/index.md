---
title: problem
date: 2024-03-15 20:28:05
---

这里收录了同学们问我的各种问题：

# Problem_1

![图片](/images/problem/problem_1_1.png)

## original code

`#include <iostream>`
`using namespace std;`
`int main()`
`{`
	`float a,b,c,n;`
	`cout<<"请输入三个变量：";`
	`cin>>a>>b>>c;`
    `void sort(float &,float &,float &);`
    `sort(a,b,c);`
	`cout<<"按从小到大的顺序为："<<a<<" "<<b <<" "<<c<<endl;`
	`return 0;` 
`}`
`void sort(float &x,float &y,float &z)`
`{`
	`float temp;`
	`float arr[]={x,y,z};`
	`for(int i=0;i <3;i++)`
	 `if (arr[i]>=arr[i+1])`
	 `{`
	 	`temp=arr[i];`
	 	`arr[i]=arr[i+1];`
	 	`arr[i+1]=temp;`
	 `}`
	 `x=arr[0];`
	 `y=arr[1];`
	 `z=arr[2];`
``	
`}`

![图片](/images/problem/problem_1_2.png)

你看看哪错了啊

## Ans.1

修改后的程序可以正常运行，原因是在原始程序中，sort函数的声明和定义被分开了。在C++中，函数的声明应该放在使用它的代码之前，否则编译器会报错。

在修改后的程序中，将sort函数的声明放在了main函数之前，这样在main函数中使用sort函数时，编译器就能找到它的声明，从而正确编译程序。

下面是修改后的程序：

```cpp
#include <iostream>
using namespace std;
void sort(float &,float &,float &);//修改了这里
int main()
{
	float a,b,c,n;
	cout<<"请输入三个变量：";
    //void sort(float &,float &,float &);修改了这里
	cin>>a>>b>>c;
    sort(a,b,c);
	cout<<"按从小到大的顺序为："<<a<<" "<<b <<" "<<c<<endl;
	return 0; 
}
void sort(float &x,float &y,float &z)
{
	float temp;
	float arr[]={x,y,z};
	for(int i=0;i <3;i++)
	 if (arr[i]>=arr[i+1])
	 {
	 	temp=arr[i];
	 	arr[i]=arr[i+1];
	 	arr[i+1]=temp;
	 }
	 x=arr[0];
	 y=arr[1];
	 z=arr[2];
	
}
```

# Problem_2

15题
救命
这我怎么打出来
呜

![图片](/images/problem/problem_2_1.jpg)

![图片](/images/problem/problem_2_2.jpg)

![图片](/images/problem/problem_2_3.jpg)

应该是我写的有问题

## Introduction

在C语言中，逻辑运算符包括逻辑与（&&）、逻辑或（||）和逻辑非（！）。这些运算符用于组合多个条件判断。

1. 优先级：
   - 逻辑非（！）的优先级最高，其次是逻辑与（&&），最后是逻辑或（||）。
   - 当一个表达式中同时存在多个逻辑运算符时，会按照优先级进行计算。

2. 短路特性：
   - 逻辑与（&&）：如果第一个操作数为假（0），则整个表达式的结果为假，不再计算第二个操作数。
   - 逻辑或（||）：如果第一个操作数为真（非0），则整个表达式的结果为真，不再计算第二个操作数。

在C语言中，逻辑运算符的优先级是：非（！）>与（&&）>或（||）。这意味着在表达式中，先进行非运算，然后进行与运算，最后进行或运算。

短路特性是指当逻辑运算符的结果已经确定时，就不再计算后面的部分。例如，对于逻辑与运算符（&&），如果第一个操作数为假（0），则整个表达式的结果为假，不再计算第二个操作数；对于逻辑或运算符（||），如果第一个操作数为真（非0），则整个表达式的结果为真，不再计算第二个操作数。

举个例子：
```c
int a = 5;
int b = 10;
int c = 0;

if (a > b && b > c) {
    printf("条件成立");
} else {
    printf("条件不成立");
}
```
在这个例子中，由于a大于b为假（0），根据逻辑与运算符的短路特性，不再计算b > c，直接输出"条件不成立"。

## Code , Result and Explain

### Code.1

```c
#include <stdio.h>

int main()

{

  int x,y,z;

  x=y=z=0;

  ++x||++y&&++z;

  printf("x=%d\ty=%d\tz=%d\n",x,y,z);

}
```



#### Result.1

x=1     y=0     z=0

#### Explain.1

1. 首先，包含了<stdio.h>头文件，以便使用printf函数进行输出。
2. 定义了一个名为main的函数，它是程序的入口点。
3. 在main函数内部，声明了三个整型变量x、y和z，并将它们的初始值都设置为0。
4. 接下来，执行了一个复合赋值语句：++x||++y&&++z。这个语句包含了两个逻辑运算符：||（逻辑或）和&&（逻辑与）。
5. 根据逻辑运算符的优先级，先计算++x，将x的值加1，变为1。然后计算||运算，由于++x为真（非零），所以整个表达式的结果为真，不再继续计算后面的部分。
6. 因此，++y和++z都没有被执行，y和z的值保持为0。
7. 最后，使用printf函数输出x、y和z的值，结果为：x=1，y=0，z=0。

### Code.2

```c
#include <stdio.h>

int main()

{

  int x,y,z;

  x=y=z=-1;

  ++z&&++y&&++z;

  printf("x=%d\ty=%d\tz=%d\n",x,y,z);

}
```



#### Result.2

x=-1    y=-1    z=0

#### Explain.2

1. 首先，包含了<stdio.h>头文件，以便使用printf函数进行输出。
2. 定义了一个名为main的函数，它是程序的入口点。
3. 在main函数内部，声明了三个整型变量x、y和z。
4. 将x、y和z都初始化为-1。
5. 接下来是一个复合逻辑表达式：++z&&++y&&++z。这个表达式使用了逻辑与运算符（&&）来连接三个递增操作。由于逻辑与运算符具有短路特性，当第一个操作数为假（即0）时，后面的操作数将不会被执行。
6. 在这个例子中，初始时z的值为-1，不满足条件，所以不会执行++y和++z。因此，y和z的值保持不变，仍然是-1。
7. 最后，使用printf函数输出x、y和z的值。

### Code.3

```
#include <stdio.h>

int main()

{

  int x,y,z;

  x=y=z=-1;

  x++&&--y&&z--||--x;

  printf("x=%d\ty=%d\tz=%d\n",x,y,z);

}
```

#### Result.3

x=0     y=-2    z=-2

#### Explain.3

1. 首先，包含了<stdio.h>头文件，以便使用printf函数进行输出。

2. 定义了一个名为main的函数，它是程序的入口点。

3. 在main函数内部，声明了三个整型变量x、y和z。

4. 将x、y和z都初始化为-1。

5. 接下来是一个复杂的逻辑表达式：x++ && --y && z-- || --x。这个表达式涉及到自增（++）和自减（--）运算符以及逻辑与（&&）和逻辑或（||）运算符。

6. 由于逻辑与（&&）运算符的优先级高于逻辑或（||）运算符，所以先计算x++ && --y && z--，即x自增1变为0，y自减1变为-2，z保持不变为-1。由于x为0，逻辑与运算的结果为假（0），因此不再继续计算后面的部分。

7. 最后，执行printf函数，输出x、y和z的值。

   

# Problem_3

![图片](/images/problem/problem_3_1.jpg)

![图片](/images/problem/problem_3_2.jpg)

## Code

```c
#include <stdio.h>
int main()
{
    int num,place,temp_num,digit,reversed;
    //接收数据...begin
    printf("输入一个小于10000的正整数");
    scanf("%d",&num);
    //接收数据...end

    //第一小问...begin
    if(num>9999)
    {
        place=5;

    }
    else if (num>999)
    {
        place=4;
    }
    else if (num>99)
    {
        place=3;
    }
    else if (num>9)
    {
        place=2;
    }
    else
    {
        place=1;
    }
    //第一小问...end

    //第二小问...begin
    printf("位数：%d\n",place);
    temp_num=num;//假设为123,temp为临时的
    while (temp_num!=0)//123!=0
    {
        digit=temp_num%10;//digit=123%10=3
        printf("%d\n",digit);//printF("3")
        temp_num/=10;//temp_num=12
    }
    //第二小问...end

    //第三小问...begin
    reversed=0;
    temp_num=num;
    while (temp_num!=0)
    {
        digit=temp_num%10;
        reversed=reversed*10+digit;
        temp_num/=10;
    }
    printf("反转后的数字为：%d\n",reversed);
    //第三小问...end

    return 0;
}
```

# Problem_4

你帮我看看，今天晚上给我讲讲

## Q%A

### 1.猜数游戏

在这个实验中，我们将尝试编写一个猜数游戏程序，这个程序看上去有些难度，但是如果按下列要求循序渐进地编程实现，会发现其实这个程序是很容易实现的。那么，现在就开始吧，先编写第1个程序，然后试着在第1个程序的基础上编写第2个程序，……

编程先由计算机“想”一个1～100之间的数请人猜，如果人猜对了，则结束游戏，并在屏幕上输出人猜了多少次才猜对此数，以此来反映猜数者“猜”的水平；否则计算机给出提示，告诉人所猜的数是太大还是太小，最多可以猜10次，如果猜了10次仍未猜中的话，结束游戏。

验证答案结果如下图：

![img](data:image/png;base64,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)

```c
#include <stdio.h>
#include <stdlib.h>//随机数头文件
#include <time.h>
int main()
{
	int num,guess_num=0,guess_time=0;
    srand(time(NULL));
	num=rand()%100+1;//生成1-100的随机数
	//printf("%d\n\n",num);
	printf("Please guess a magic number:");
	while (num)
	{
		scanf("%d",&guess_num);
		if(guess_time==10)
		{
			printf("counter=10");
			return 0;
		}
		if(guess_num==num)
		{
			printf("counter=%d",guess_time);
			return 0;
		}
		else if(guess_num>num)
		{
			printf("Wrong!Too high!\n");
			guess_time+=1;
		}
		else if(guess_num<num)
		{
			printf("Wrong!Too low!\n");
			guess_time+=1;
		}
	}
	return 0;
	
}
```

### 2. 餐饮服务质量调查打分

在商业和科学研究中，人们经常需要对数据进行分析并将结果以直方图的形式显示出来。例如，一个公司的主管可能需要了解一年来公司的营业状况，比较一下各月份的销售收入状况。如果仅给出一大堆数据，这显然太不直观了，如果能将这些数据以条形图（直方图）的形式表示，将会大大增加这些数据的直观性，也便于数据的分析与对比。下面以顾客对餐饮服务打分为例，练习这方面的程序编写方法。

假设有10个学生被邀请来给自助餐厅的食品和服务质量打分，分数划分为1～10这10个等级（1表示最低分，10表示最高分），试统计调查结果，并用*打印出如下形式的统计结果直方图。

验证答案结果如下图：

![img](data:image/png;base64,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)

```c
#include <stdio.h>
int main()
{
	int li[11]={0},a;
	for(int i=0;i<10;i++)
	{
		scanf("%d",&a);
		li[a]+=1;
	}
//	for(int i=0;i<10;i++)
//	{
//		printf("%d",li[i]);
//	}
	printf("Grade Count Histogram\n");
	for(int i=1;i<=10;i++)
	{
		printf("%5d %5d ",i,li[i]);
		for(int j=0;j<li[i];j++)
			printf("*");
		printf("\n");
	}
	return 0;
}
```

### 3. 文曲星猜数游戏

模拟文曲星上的猜数游戏，先由计算机随机生成一个各位相异的4位数字，由用户来猜，根据用户猜测的结果给出提示：xAyB

其中，A前面的数字表示有几位数字不仅数字猜对了，而且位置也正确，B前面的数字表示有几位数字猜对了，但是位置不正确。

最多允许用户猜的次数由用户从键盘输入。如果猜对，则提示“Congratulations!”；如果在规定次数以内仍然猜不对，则给出提示“Sorry, you haven't guess the right number!”。程序结束之前，在屏幕上显示这个正确的数字。

验证答案结果如下图：

![img](data:image/png;base64,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)

```c
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
	int nums[4], guess[4];
	int max_tries, tries = 0;
	int A, B;
	char input[5];
	
	srand(time(NULL));
	for (int i = 0; i < 4; i++) {
		nums[i] = rand() % 9 + 1;
		for (int j = 0; j < i; j++) {
			if (nums[j] == nums[i]) {
				i--;
				break;
			}
		}
	}
	
	for(int i=0;i<4;i++)
	{
		printf("%d",nums[i]);
	}
	printf("\n\n");
	
	printf("How many times do you want to guess?");
	scanf("%d", &max_tries);
	
	while (tries < max_tries) {
		printf("No.%d of %d times\n",tries+1,max_tries);
		printf("Please input 4 different numbers:\n");
		scanf("%s", input);
		for (int i = 0; i < 4; i++) {
			guess[i] = input[i] - '0';
		}
		
		A = 0;
		B = 0;
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 4; j++) {
				if (guess[i] == nums[j]) {
					if (i == j) {
						A++;
					} else {
						B++;
					}
				}
			}
		}
		
		printf("%dA%dB\n", A, B);
			if (A == 4) {
				printf("Congratulations,you got it at No.%d\n",tries);
					break;
			}
			tries++;
	}
	
	if (tries == max_tries) {
		printf("Sorry, you haven't guess the right number!\n");
	}
	
	printf("Correct answer is:");
	for (int i = 0; i < 4; i++) {
		printf("%d", nums[i]);
	}
		
		return 0;
}

```

### 4．掷骰子游戏

编写程序模拟掷骰子游戏。已知掷骰子游戏的游戏规则为：每个骰子有6面，这些面包含1、2、3、4、5、6个点，投两枚骰子之后，计算点数之和。如果第一次投的点数和为7或11，则游戏者获胜；如果第一次投的点数和为2、3或12，则游戏者输；如果第一次投的点数和为4、5、6、8、9或10，则将这个和作为游戏者获胜需要掷出的点数，继续投骰子，直到赚到该点数时算是游戏者获胜。如果投掷7次仍未赚到该点数，则游戏者输。

验证答案结果如下图：

![img](data:image/png;base64,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)![img](data:image/png;base64,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)

```c
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
	srand(time(NULL));
	int sum,player_number1,player_number2,tries=0,rolled_sum=0,random_number1=rand()%5+1,random_number2=rand()%5+1;
	sum=random_number1+random_number2;
	printf("Player rolled %d+%d=%d\n",random_number1,random_number2,sum);
	printf("Point is %d\n",sum);
	if((sum==7)||(sum==11))
	{
		printf("Player rolled %d+%d=%d\n",random_number1,random_number2,sum);
		printf("Player wins\n");
		return 0;
	}
	else if((sum==2)||(sum==3)||(sum==12))
	{
		printf("Player rolled %d+%d=%d\n",random_number1,random_number2,sum);
		printf("Player loses\n");
		return 0;
	}
	else
	{
		rolled_sum+=random_number1+random_number2;
		while(tries<=7)
		{
			player_number1=rand()%5+1;
			player_number2=rand()%5+1;
			printf("Player rolled %d+%d=%d\n",player_number1,player_number2,(player_number1+player_number2));
			rolled_sum+=player_number1+player_number2;
			tries+=1;
			if(rolled_sum==sum)
			{
				printf("Player wins\n");
				return 0;
			}
		}
		if(rolled_sum!=sum)
		{
			printf("Player loses\n");
			return 0;
		}
		
	}
	return 0;
}
```
