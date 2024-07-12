---
title: CLZ银行问题
date: 2024-03-17 16:11:41
tags: LanQiao
category: CodeWorld
---

题目描述 

CLZ银行只有两个接待窗口，VIP窗口和普通窗口。VIP用户进入VIP窗口排队，剩下的用户进入普通窗口排队。现有 M 次操作，操作有四种类型，如下： 

· IN name V:表示一名叫 name 的用户到 VIP 窗口排队。 

· OUT V:表示 VIP 窗口队头的用户离开排队。 
· IN name N:表示一名叫 name 的用户到普通窗口排队。 

· OUT N:表示普通窗口队头的用户离开排队。 

求 I 次操作结束后 VIP 窗囗队列和普通窗口队列中的姓名。

输入描述 

第一行是一个整数 M(1 ≤ M ≤ 1000)，表示一共有 M 次操作。 第二行到第 M +1行输入操作，格式如下：

IN name V

OUT V

IN name N

OUT N

输出描述 

输出 M 次操作后 VIP 窗囗队列和普通窗口队列中的姓名(从头到尾)，先输出 VIP 窗口队列后输出普通窗口队列。

## MyCode

```python
V=[]
N=[]
M=int(input())
for i in range(M):
    txt=input()
    if txt[:txt.index(" ")] == "IN":
        a = txt[txt.index(" ")+1:]
        if a[-1] == "V":
            V.append(a[:a.index(" ")])
        elif a[-1] == "N":
            N.append(a[:a.index(" ")])
    else:
        a = txt[txt.index(" ")+1:]
        if a[-1] == "V":
            V.pop(0)
        elif a[-1] == "N":
            N.pop(0)
for i in V:
    print(i)
for j in N:
    print(j)
```
