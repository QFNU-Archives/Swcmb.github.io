---
title: C++程序设计课后题
date: 2024-03-19 14:21:52
tags: 曲园
category: CodeWorld
---



## P36

## 10.

```C++
#include<iostream>
#include<string>
using namespace std;
int main() {
	string a,b;
	a="abcd";
	b="qwer";
	a=a+b;
	cout<<a;
	return 0;
}
```

## 11.

```c++
#include<iostream>
#include<string>
using namespace std;
int main() {
	string a;
	cin >> a;
	for (int i = (a.size()-1); i >= 0; i--) {
		cout << a[i];
	}
	cout << endl;
	return 0;

}
```

## 13.

```C++
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

// 重载函数，用于整数排序
void sortData(vector<int>& data) {
	sort(data.begin(), data.end());
}

// 重载函数，用于单精度浮点数排序
void sortData(vector<float>& data) {
	sort(data.begin(), data.end());
}

// 重载函数，用于双精度浮点数排序
void sortData(vector<double>& data) {
	sort(data.begin(), data.end());
}

//template<typename T>
//T sortData(vector<T>& data){
//	sort(data.begin(), data.end());
//}

int main() {
	vector<int> intData = {5, 3, 1, 4, 2};
	vector<float> floatData = {5.5f, 3.3f, 1.1f, 4.4f, 2.2f};
	vector<double> doubleData = {5.55, 3.33, 1.11, 4.44, 2.22};
	
	sortData(intData);
	sortData(floatData);
	sortData(doubleData);
	
	cout << "Sorted integers: ";
	for (int i : intData) {
		cout << i << " ";
	}
	cout << endl;
	
	cout << "Sorted floats: ";
	for (float f : floatData) {
		cout << f << " ";
	}
	cout << endl;
	
	cout << "Sorted doubles: ";
	for (double d : doubleData) {
		cout << d << " ";
	}
	cout << endl;
	
	return 0;
}

```

## 14.

```C++
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

//// 重载函数，用于整数排序
//void sortData(vector<int>& data) {
//	sort(data.begin(), data.end());
//}
//
//// 重载函数，用于单精度浮点数排序
//void sortData(vector<float>& data) {
//	sort(data.begin(), data.end());
//}
//
//// 重载函数，用于双精度浮点数排序
//void sortData(vector<double>& data) {
//	sort(data.begin(), data.end());
//}

template<typename T>
T sortData(vector<T>& data){
	sort(data.begin(), data.end());
}

int main() {
	vector<int> intData = {5, 3, 1, 4, 2};
	vector<float> floatData = {5.5f, 3.3f, 1.1f, 4.4f, 2.2f};
	vector<double> doubleData = {5.55, 3.33, 1.11, 4.44, 2.22};
	
	sortData(intData);
	sortData(floatData);
	sortData(doubleData);
	
	cout << "Sorted integers: ";
	for (int i : intData) {
		cout << i << " ";
	}
	cout << endl;
	
	cout << "Sorted floats: ";
	for (float f : floatData) {
		cout << f << " ";
	}
	cout << endl;
	
	cout << "Sorted doubles: ";
	for (double d : doubleData) {
		cout << d << " ";
	}
	cout << endl;
	
	return 0;
}

```

# P70

## 6.

```C++
#include<iostream>
using namespace std;
class Cuboid {
public:
	void setdata(int l,int w,int h){length=l;width=w;height=h;}
	int volume()
	{
		return length*width*height;
	}
private:
	int length;
	int width;
	int height;
};
int main()
{
	Cuboid cuboid[3];
	int a,b,c;
	for(int i=0;i<3;i++){
		cin>>a>>b>>c;
		cuboid[i].setdata(a,b,c);
	}
	for(int i=0;i<3;i++){
		cout<<"No."<<(i+1)<<"'s voiume is "<<cuboid[i].volume()<<endl;
	}
	return 0;
	
}
```

# P122

## 1.

构造函数和析构函数在面向对象编程中扮演着至关重要的角色。它们主要用于对象的创建和销毁过程，确保对象在使用前后能够保持有效的状态。下面将详细介绍这两个特殊成员函数的作用及自定义它们的情况。

### 一、构造函数的作用

- **初始化对象**：构造函数用于初始化对象的成员变量，确保每个成员变量都有一个合适的初始值。
- **资源分配**：如果对象需要占用额外的资源（如动态内存、文件描述符等），构造函数是申请这些资源的合适地点。
- **满足特定条件的对象创建**：在某些情况下，只有当特定条件满足时才能创建对象，构造函数可以包含逻辑来检查这些条件。
- **依赖性注入**：构造函数可以接收参数，用于注入依赖，如服务、配置或其他对象，实现解耦和可测试性。

### 二、析构函数的作用

- **资源释放**：析构函数负责释放对象在生命周期中申请的资源，如动态内存、文件描述符等，以防止资源泄露。
- **状态更新**：对象销毁前可能需要更新某些状态或通知其他部分的代码，析构函数是执行这些操作的理想地点。
- **持久化数据**：如果对象在生命周期中有状态改变且需要保存到磁盘，析构函数可以是实施这一操作的好地方。
- **对象清理**：在对象被销毁之前，析构函数确保与之相关的所有操作都已经妥善完成或回滚，保持系统的稳定性。

### 三、什么时候需要自定义构造函数和析构函数

- **当类的成员变量需要在对象创建时进行特定的初始化**：如果仅仅依靠编译器生成的默认构造函数无法正确初始化对象，就需要自定义构造函数。
- **当类需要管理资源**：如果类的对象会分配动态内存、文件、网络连接或其他任何形式的资源，就需要自定义构造函数来分配（和析构函数来释放）这些资源。
- **当需要限制对象创建的方式**：如果类的实例化需要满足特定条件，或者想要控制如何以及何时创建对象，自定义构造函数是实现这一点的方式。
- **当类的对象需要在某些条件下持续追踪或修改状态**：如果对象的状态改变需要在销毁前保存或处理，就需要自定义析构函数来确保这些操作的正确执行。

综上所述，通过自定义构造函数和析构函数，可以精确控制对象的创建和销毁过程，确保资源的合理使用和及时回收，以及满足特定的业务逻辑需求。这不仅有助于提高代码的可维护性和可读性，也是实现某些复杂功能的关键所在。

## 2.

```c++
#include <iostream>
using namespace std;
class Date {
public:
	Date(int, int, int);
	Date(int, int);
	Date(int);
	Date( );
	void display( );
private:
	int month;
	int day;
	int year;
};
Date::Date(int m, int d, int y): month(m), day(d), year(y)
{ }
Date::Date(int m, int d): month(m), day(d) {
	year = 2005;
}
Date::Date(int m): month(m) {
	day = 1;
	year = 2005;
}
Date::Date( ) {
	month = 1;
	day = 1;
	year = 2005;
}
void Date::display( ) {
	cout << month << "/" << day << "/" << year << endl;
}
int main( ) {
	Date d1(10, 13, 2005);
	Date d2(12, 30);
	Date d3(10);
	Date d4;
	d1.display( );
	d2.display( );
	d3.display( );
	d4.display( );
	return 0;
}
```

## 3.

修改后报错：

| **文件名**                                    | **行**          | **列**          | **描述**                                                     |
| --------------------------------------------- | --------------- | --------------- | ------------------------------------------------------------ |
| <u>***D:/Files/Documents/untitled1.cpp***</u> | <u>***6***</u>  | <u>***2***</u>  | <u>***[错误] 'Date::Date(int, int, int)' cannot be overloaded with  'Date::Date(int, int, int)'***</u> |
| D:/Files/Documents/untitled1.cpp              | 5               | 2               | [说明] previous  declaration 'Date::Date(int, int, int)'     |
| <u>***D:/Files/Documents/untitled1.cpp***</u> | <u>***17***</u> | <u>***1***</u>  | <u>***[错误] no declaration matches 'Date::Date(int, int)'***</u> |
| D:/Files/Documents/untitled1.cpp              | 3               | 7               | [说明] candidates  are: 'constexpr Date::Date(Date&&)'       |
| D:/Files/Documents/untitled1.cpp              | 3               | 7               | [说明] 'constexpr  Date::Date(const Date&)'                  |
| D:/Files/Documents/untitled1.cpp              | 8               | 2               | [说明]  'Date::Date()'                                       |
| D:/Files/Documents/untitled1.cpp              | 7               | 2               | [说明]  'Date::Date(int)'                                    |
| D:/Files/Documents/untitled1.cpp              | 15              | 1               | [说明] 'Date::Date(int,  int, int)'                          |
| D:/Files/Documents/untitled1.cpp              | 3               | 7               | [说明] 'class  Date' defined here                            |
| D:/Files/Documents/untitled1.cpp              | 0               | -1              | In function 'int main()':                                    |
| <u>***D:/Files/Documents/untitled1.cpp***</u> | <u>***34***</u> | <u>***16***</u> | <u>***[错误] no matching function for call to 'Date::Date(int, int)'***</u> |
| D:/Files/Documents/untitled1.cpp              | 24              | 1               | [说明] candidate:  'Date::Date()'                            |
| D:/Files/Documents/untitled1.cpp              | 24              | 1               | [说明] candidate  expects 0 arguments, 2 provided            |
| D:/Files/Documents/untitled1.cpp              | 20              | 1               | [说明] candidate:  'Date::Date(int)'                         |
| D:/Files/Documents/untitled1.cpp              | 20              | 1               | [说明] candidate  expects 1 argument, 2 provided             |
| D:/Files/Documents/untitled1.cpp              | 15              | 1               | [说明] candidate:  'Date::Date(int, int, int)'               |
| D:/Files/Documents/untitled1.cpp              | 15              | 1               | [说明] candidate  expects 3 arguments, 2 provided            |
| D:/Files/Documents/untitled1.cpp              | 3               | 7               | [说明] candidate:  'constexpr Date::Date(const Date&)'       |
| D:/Files/Documents/untitled1.cpp              | 3               | 7               | [说明] candidate  expects 1 argument, 2 provided             |
| D:/Files/Documents/untitled1.cpp              | 3               | 7               | [说明] candidate:  'constexpr Date::Date(Date&&)'            |
| D:/Files/Documents/untitled1.cpp              | 3               | 7               | [说明] candidate  expects 1 argument, 2 provided             |

修改后：

```C++
#include <iostream>
using namespace std;
class Date {
public:
	Date(int=1,int=1,int=20005);//Date(int, int);
	void display( );
private:
	int month;
	int day;
	int year;
};
Date::Date(int m, int d, int y): month(m), day(d), year(y)
{ }
void Date::display( ) {
	cout << month << "/" << day << "/" << year << endl;
}
int main( ) {
	Date d1(10, 13, 2005);
	Date d2(12, 30);
	Date d3(10);
	Date d4;
	d1.display( );
	d2.display( );
	d3.display( );
	d4.display( );
	return 0;
}
```

## 4.

```C++
#include<iostream>
using namespace std;
class Student{
public:
	Student(int a,int b){id=a;grade=b;}
	friend ostream& operator<<(ostream& output,Student& stu)
	{
		output<<stu.id<<" "<<stu.grade<<endl;
		return output;
	}
private:
	int id;
	int grade;
};
int main()
{
	Student students[5]={
		Student(1,2),
		Student(3,4),
		Student(5,6),
		Student(7,8),
		Student(9,10)
	};
	Student* p = students; // 指针指向数组首元素
	cout << *p << *(p + 2) << *(p + 4) << endl; // 输出第1，3，5个学生的数据
	return 0;
}

```

## 5.

```C++
#include<iostream>
using namespace std;
class Student{
public:
	Student(int a,int b){id=a;grade=b;}
	int getGrade(){
		return grade;
	}
	friend ostream& operator<<(ostream& output,Student& stu)
	{
		output<<stu.id<<" "<<stu.grade<<endl;
		return output;
	}
private:
	int id;
	int grade;
};
int max(int num, Student* pt){
	int maxnum = 0;
	for(int i = 0; i < num; i++){
		if(maxnum < pt[i].getGrade()){
			maxnum = pt[i].getGrade();
		}
	}
	return maxnum;
}

int main()
{
	Student students[5]={
		Student(1,2),
		Student(3,4),
		Student(5,6),
		Student(7,8),
		Student(9,10)
	};
	cout<<max(5,students)<<endl;
	return 0;
}
```

## 9.

```C++
#include <iostream> 
using namespace std; 
class Product 
{public: 
	Product(int m, int q, float p): num(m), quantity(q), price(p) {}; 
	void total(); 
	static float average(); 
	static void display(); 
private: 
	int num;                         //销货员号 
	int quantity;                    //销货件数 
	float price;                     //销货单价 
	static float discount;           //商店统一折扣 
	static float sum;                //总销售款 
	static int n;                    //商品销售总件数 
}; 
void Product::total()                   //求销售款和销售件数 
{
	float rate = 1.0; 
	if (quantity > 10) rate = 0.98 * rate; 
	sum = sum + quantity * price * rate * (1 - discount); //累计销售款 
	n = n + quantity;                                 //累计销售件数 
} 
void Product::display()                  //输出销售总件数和平均价 
{
	cout << sum << endl; 
	cout << average() << endl; 
} 
float Product::average()               //求平均价 
{
	return (sum / n);
} 

float Product::discount = 0.05;       //对静态数据成员初始化 
float Product::sum = 0;               //对静态数据成员初始化 
int Product::n = 0;                   //对静态数据成员初始化 

int main() 
{
	Product Prod[3] = {Product(101, 5, 23.5), Product(102, 12, 24.56), Product(103, 100, 21.5)}; 
	//定义Product类对象数组， 并给出数据 
	for (int i = 0; i < 3; i++)          //统计3个销货员的销货情况 
		Prod[i].total(); 
	Product::display();                   //输出结果 
	return 0; 
}

```

## P157

### 7.

```C++
#include<iostream>
#include<string>
using namespace std;

class Student{
public:
	int num;
	int grade;
	string name;
	char sex;
};

class Teacher{
public:
	Teacher(Student& stu, int s, int d){
		num = stu.num;
		name = stu.name;
		sex = stu.sex;
		salary = s;
		discipline = d;
	}
	int num;
	int salary;
	int discipline;
	string name;
	char sex;
};

int main() {
	Student student1;
	student1.num = 1;
	student1.grade = 3;
	student1.name = "张三";
	student1.sex = 'M';
	
	cout << "学生姓名：" << student1.name << endl;
	cout << "学生学号：" << student1.num << endl;
	cout << "学生性别：" << (student1.sex == 'M' ? "男" : "女") << endl;
	cout << "学生年级：" << student1.grade << endl<<endl;
	
	Teacher teacher1(student1, 5000, 10);
	cout << "教师编号：" << teacher1.num << endl;
	cout << "教师姓名：" << teacher1.name << endl;
	cout << "教师性别：" << teacher1.sex << endl;
	cout << "教师薪水：" << teacher1.salary << endl;
	cout << "教师学科：" << teacher1.discipline << endl;
	
	return 0;
}

```

## P203

### 5.

有以下程序结构，请分析访问属性。

```C++
class A {
public:
	void f1( );
	int i;
protected:
	void f2( );
	int j;
private:
	int k;
};
class B: public A {
public:
	void f3( );
protected:
	int m;
private:
	int n;
//A 为基类
//B 为 A的公用派生类
};
class C: public B {         //C为B的公用派生类
public:
	void f4( );
private:
	int p;
};
int main( ) {
	A a1;                      //a1是基类A的对象
	B b1;                        //b1是派生类B的对象
	C c1;                       //c1是派生类C的对象

	return 0;
}
```

请问：

（1）在 main 函数中能否用b1.i,b1.j和bl.k 引用派生类B对象bI 中基类A的成员？ 

（2）派生类B 中的成员函数能否调用基类A中的成员函数f1和f2？ 

（3）派生类B 中的成员函数能否引用基类A中的数据成员i，j，k？ 

（4）能否在main 函数中用cl.i,cl.j,cl.k,cl.m,cl.n,cl.p引用基类A 的成员i，j，k，派生类B 的成员 m，n，以及派生类C的成员 P？ 

（5）能否在main 函数中用cl.f1（），c1.c2（），c1.f3（）和c1.f4（）调用f1，f2,f3，f4成员函数

（6）派生类C的成员函数f4能否调用基类A中的成员函数f1，f2和派生类中的成员函数f3？

——————

（1）在 main 函数中不能直接用b1.i, b1.j和b1.k引用派生类B对象b1中基类A的成员，因为基类A的公共成员在派生类B中是保护成员。

（2）派生类B 中的成员函数可以调用基类A中的成员函数f1和f2，但需要通过基类A的对象或指针来调用。例如：a1.f1() 或 a1.f2()。

（3）派生类B 中的成员函数可以引用基类A中的数据成员i，j，k，但需要通过基类A的对象或指针来引用。例如：a1.i, a1.j, a1.k。

（4）不能在main 函数中用cl.i, cl.j, cl.k, cl.m, cl.n, cl.p引用基类A 的成员i，j，k，派生类B 的成员 m，n，以及派生类C的成员 P。因为这些成员都是私有的，只能在它们所在的类内部访问。

（5）不能在main 函数中用cl.f1（），c1.f2（），c1.f3（）和c1.f4（）调用f1，f2, f3，f4成员函数。因为f1和f2是基类A的私有成员函数，只能在基类A的内部访问；f3是派生类B的公共成员函数，可以在派生类B及其派生类的对象上调用；f4是派生类C的公共成员函数，可以在派生类C及其派生类的对象上调用。

（6）派生类C的成员函数f4能够调用基类A中的成员函数f1，但不能直接调用f2和派生类中的成员函数f3

----------------------------------------------------------------------------------

在C++中，访问权限分为公有（public）、保护（protected）和私有（private）。继承关系可以通过这些访问权限来控制基类成员在派生类中的可见性。

下面分析每个类的成员在各自类及其派生类中的访问属性：

#### 基类 A 的成员

- `void f1()`: 公有成员函数，可以在类A及其所有派生类中直接访问。
- `int i`: 公有数据成员，可以在类A及其所有派生类中直接访问。
- `void f2()`: 保护成员函数，在类A及其派生类B、C、D中可以访问，但在类外不可访问。
- `int j`: 保护数据成员，在类A及其派生类B、C、D中可以访问，但在类外不可访问。
- `int k`: 私有数据成员，只能在类A中访问，在派生类B、C、D中均不可直接访问。

#### 派生类 B 的成员

- `void f3()`: 公有成员函数，可以在类B及其所有派生类中直接访问。
- `int m`: 保护数据成员，可以在类B及其派生类C、D中访问，但在类A中不能直接访问。
- `int n`: 私有数据成员，只能在类B中访问，在派生类C、D中不可直接访问。

#### 派生类 C 的成员

- `void f4()`: 公有成员函数，可以在类C及其所有派生类中直接访问。
- `int p`: 私有数据成员，只能在类C中访问，在派生类D中不可直接访问。

#### 派生类 D 的成员

由于D是C的私有派生类，D的成员在C的外部是不可见的。因此，我们无法确定D的成员在D以外的范围的访问属性。

#### main函数中的访问情况

在main函数中，我们可以创建对象a1、b1和c1，并访问它们的公有成员。以下是各个对象的公有成员的访问情况：

- `a1.f1()`: 可以调用，因为f1是公有成员函数。
- `a1.i`: 可以访问，因为i是公有数据成员。
- `b1.f1()`: 可以调用，因为f1是继承自A的公有成员函数。
- `b1.f3()`: 可以调用，因为f3是B的公有成员函数。
- `b1.i`: 可以访问，因为i是继承自A的公有数据成员。
- `c1.f1()`: 可以调用，因为f1是继承自A的公有成员函数。
- `c1.f3()`: 可以调用，因为f3是继承自B的公有成员函数。
- `c1.f4()`: 可以调用，因为f4是C的公有成员函数。
- `c1.i`: 可以访问，因为i是继承自A的公有数据成员。

注意：对于保护成员和私有成员，它们不能在类的外部直接访问，但可以在派生类中通过特定的方式访问（如通过公有成员函数间接访问）。

--------------------------------------------------------

### 6.

有以下程序结构，请分析所有成员在各类的范围内的访问属性：

```C++
class A {                       //基类
public:
	void f1( );
protected:
	void f2( );
private:
	int i;
};

class B: public A {              // B为A的公用派生类
public:
	void f3( );
	int k;
private:
	int m;
};

class C: protected B {         //C为B的保护派生类
public:
	void f4( );
protected:
	int n;
private:
	int p;
};

class D: private C {          //D为C的私有派生类
public:
	void f5( );
protected:
	int q;
private:
	int r;
};
void main() {
	A a1;                       //a1是基类A的对象
	B b1;                      //b1是派生类B的对象
	C c1;                      //c1是派生类C的对象
	D d1;                      //d1是派生类D的对象

}
```

在分析所有成员在各类范围内的访问属性之前，我们需要了解C++中的访问控制和继承关系。在C++中，访问权限分为公有（public）、保护（protected）和私有（private）。继承关系可以通过这些访问权限来控制基类成员在派生类中的可见性。

下面分析每个类的成员在各自类及其派生类中的访问属性：

#### 基类 A 的成员
- `void f1()`: 公有成员函数，可以在类A及其所有派生类中直接访问。
- `void f2()`: 保护成员函数，在类A及其派生类B、C、D中可以访问，但在类外不可访问。
- `int i`: 私有数据成员，只能在类A中访问，在派生类B、C、D中均不可直接访问。

#### 派生类 B 的成员
- `void f3()`: 公有成员函数，可以在类B及其所有派生类中直接访问。
- `int k`: 公有数据成员，可以在类B及其所有派生类中直接访问。
- `int m`: 私有数据成员，只能在类B中访问，在派生类C、D中不可直接访问。

#### 派生类 C 的成员
- `void f4()`: 公有成员函数，可以在类C及其派生类D中直接访问，但在类B中不能直接访问（因为C是B的保护派生类）。
- `int n`: 保护数据成员，可以在类C及其派生类D中访问，在类B中不能直接访问。
- `int p`: 私有数据成员，只能在类C中访问，在派生类D中不可直接访问。

#### 派生类 D 的成员
- `void f5()`: 公有成员函数，只能在类D中访问，因为D是C的私有派生类，f5在类D外部不可直接访问。
- `int q`: 保护数据成员，只能在类D中访问。
- `int r`: 私有数据成员，只能在类D中访问。

#### 总结
- 在`main()`函数中，只有公有成员可以直接被访问。对于类A、B、C、D的对象a1、b1、c1、d1，只有各自的公有成员函数和数据成员可以被直接访问。
- 保护成员和私有成员不能在类的外部直接访问，但可以在派生类中通过特定的方式访问（如通过公有成员函数间接访问）。
- 特别注意，由于D是C的私有派生类，D的成员在C的外部是不可见的，这意味着即使f4在C中是公有的，也不能在D的对象上直接调用f4，除非在D内部提供了相应的接口。

## 7.

```C++
#include <iostream> 
using namespace std; 
class A 
{ 
	public: 
	A( ){a=0;b=0;} 
	A(int i){a=i;b=0;} 
	A(int i,int j){a=i;b=j;} 
	void display( ){cout<<"a="<<a<<" b="<<b;} 
	private: 
	int a; 
	int b; 
}; 
class B: public A 
{ 
	public: 
	B( ){c=0;} 
	B(int i):A(i){c=0;} 
	B(int i,int j):A(i,j){c=0;} 
	B(int i,int j,int k):A(i,j){c=k;} 
	void display1( ) 
	{display( ); 
		cout<<" c="<<c<<endl; 
	} 
	private: 
	int c; 
}; 
int main( ) 
{ B b1; 
	B b2(1); 
	B b3(1,3); 
	B b4(1,3,5); 
	b1.display1( ); 
	b2.display1( ); 
	b3.display1( ); 
	b4.display1( ); 
	return 0; 
}
```

程序执行过程如下：

1. 定义了一个名为A的类，包含三个构造函数和一个display成员函数。构造函数分别接受不同数量的参数，用于初始化类的成员变量a和b。display函数用于输出成员变量a和b的值。

2. 定义了一个名为B的类，继承自A类。B类包含四个构造函数和一个display1成员函数。构造函数分别接受不同数量的参数，用于初始化基类A的成员变量a、b和派生类B的成员变量c。display1函数调用基类的display函数并输出成员变量c的值。

3. 在main函数中，创建了四个B类的对象：b1、b2、b3和b4。分别使用不同的构造函数进行初始化。

4. 调用每个对象的display1函数，输出它们的成员变量a、b和c的值。

具体执行过程如下：

- b1: 使用默认构造函数A()，a和b都被初始化为0，c被初始化为0。输出结果为 "a=0 b=0 c=0"。
- b2: 使用带一个整数参数的构造函数A(int i)，a被初始化为1，b被初始化为0，c被初始化为0。输出结果为 "a=1 b=0 c=0"。
- b3: 使用带两个整数参数的构造函数A(int i, int j)，a被初始化为1，b被初始化为3，c被初始化为0。输出结果为 "a=1 b=3 c=0"。
- b4: 使用带三个整数参数的构造函数B(int i, int j, int k)，a被初始化为1，b被初始化为3，c被初始化为5。输出结果为 "a=1 b=3 c=5"。

## 8.

```C++
#include <iostream> 
using namespace std; 
class A 
{public: 
	A( ){cout<<"constructing A "<<endl;} 
	~A( ){cout<<"destructing A "<<endl;} 
}; 
class B:public A 
{ 
	public: 
	B( ){cout<<"constructing B "<<endl;} 
	~B( ){cout<<"destructing B "<<endl;} 
}; 
class C:public B 
{public: 
	C( ){cout<<"constructing C "<<endl;} 
	~C( ){cout<<"destructing C "<<endl;} 
}; 
int main( ) 
{C c1; 
	return 0; 
} 
```

程序执行过程如下：

1. 进入main函数。
2. 创建C类的对象c1。
3. 调用C类的构造函数，输出 "constructing C"。
4. 在C类的构造函数中，由于C类继承自B类，因此需要先调用B类的构造函数。
5. 调用B类的构造函数，输出 "constructing B"。
6. 在B类的构造函数中，由于B类继承自A类，因此需要先调用A类的构造函数。
7. 调用A类的构造函数，输出 "constructing A"。
8. A类的构造函数执行完毕，返回到B类的构造函数。
9. B类的构造函数执行完毕，返回到C类的构造函数。
10. C类的构造函数执行完毕，对象c1的创建完成。
11. main函数结束，开始执行对象的析构。
12. 首先调用C类的析构函数，输出 "destructing C"。
13. 在C类的析构函数中，由于C类继承自B类，因此需要先调用B类的析构函数。
14. 调用B类的析构函数，输出 "destructing B"。
15. 在B类的析构函数中，由于B类继承自A类，因此需要先调用A类的析构函数。
16. 调用A类的析构函数，输出 "destructing A"。
17. A类的析构函数执行完毕，返回到B类的析构函数。
18. B类的析构函数执行完毕，返回到C类的析构函数。
19. C类的析构函数执行完毕，对象c1的析构完成。
20. main函数结束，程序执行完毕。

### 9.

```C++
#include<string> 
#include <iostream> 
using namespace std; 
class Teacher 
{public: 
	Teacher(string nam,int a,char s,string tit,string ad,string t); //构造函数 
	void display( );                            //输出姓名、性别、年龄、职称、地址、电话 
protected: 
	string name; 
	int age; 
	char sex; 
	string title; 
	string addr; 
	string tel; 
}; 
Teacher::Teacher(string nam,int a,char s,string tit,string ad,string t):
name(nam),age(a),sex(s),title(tit),addr(ad),tel(t){ } //此两行为构造函数定义 

void Teacher::display( ) 
{cout<<"name:"<<name<<endl; 
	cout<<"age:"<<age<<endl; 
	cout<<"sex:"<<sex<<endl; 
	cout<<"title:"<<title<<endl; 
	cout<<"address:"<<addr<<endl; 
	cout<<"tel:"<<tel<<endl; 
} 

class Cadre 
{public: 
	Cadre(string nam,int a,char s,string p,string ad,string t); //构造函数 
	void display( ); 
protected: 
	string name; 
	int age; 
	char sex; 
	string post; 
	string addr; 
	string tel; 
}; 
Cadre::Cadre(string nam,int a,char s,string p,string ad,string t):
name(nam),age(a),sex(s),post(p), addr(ad),tel(t){}//此两行为构造函数定义 

void Cadre::display( ) 
{cout<<"name:"<<name<<endl; 
	cout<<"age:"<<age<<endl; 
	cout<<"sex:"<<sex<<endl; 
	cout<<"post:"<<post<<endl; 
	cout<<"address:"<<addr<<endl; 
	cout<<"tel:"<<tel<<endl; 
} 

class Person:public Teacher,public Cadre 
{public: 
	Person(string nam,int a,char s,string tit,string p,string ad,string t,float w); 
	void show( ); 
	private: 
	float wage; 
}; 

Person::Person(string nam,int a,char s,string t,string p,string ad,string tel,float w): 
Teacher(nam,a,s,t,ad,tel),
Cadre(nam,a,s,p,ad,tel),
wage(w) { } //以上为构造函数定义

void Person::show( ) 
{	Teacher::display( );                                  //指定作用域teacher类 
	cout<<"post:"<<Cadre::post<<endl;                     //指定作用域Cadre类 
	cout<<"wages:"<<wage<<endl; 
} 

int main( ) 
{Person person1("Wang-li",50,'f',"prof.","president","135 Beijing Road,Shanghai",  
	"(021)61234567",1534.5); 
	person1.show( ); 
	return 0; 
} 
```

