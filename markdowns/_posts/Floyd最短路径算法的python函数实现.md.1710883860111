---
title: Floyd最短路径算法的python函数实现
date: 2024-03-19 21:31:00
tags: Algorithm
category: CodeWorld
---

<iframe src="//player.bilibili.com/player.html?aid=751265795&bvid=BV19k4y1Q7Gj&cid=1413631056&p=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true" width="100%" height="650px"> </iframe>

## 示例图：

```python
inf=float('inf')
graph = [
    [0, 4, inf, inf, inf, inf, inf, 8, inf],
    [4, 0, 8, inf, inf, inf, inf, 11, inf],
    [inf, 8, 0, 7, inf, 4, inf, inf, 2],
    [inf, inf, 7, 0, 9, 14, inf, inf, inf],
    [inf, inf, inf, 9, 0, 10, inf, inf, inf],
    [inf, inf, 4, 14, 10, 0, 2, inf, inf],
    [inf, inf, inf, inf, inf, 2, 0, 1, 6],
    [8, 11, inf, inf, inf, inf, 1, 0, 7],
    [inf, inf, 2, inf, inf, inf, 6, 7, 0]
]
```

## Floyd最短路径算法的python函数实现：

```
def floyd(graph):
    FMAX=999
    n=len(graph)
    d=[[graph[i][j] if graph[i][j]!=0 else FMAX for i in range(n)]for j in range(n)]
    for k in range(n):#中转节点
        for i in range(n):#起始节点
            for j in range(n):#结束节点
                #起始节点->结束节点 和 起始节点->中转节点->结束节点 之间的最小值
                d[i][j]=min(d[i][j],d[i][k]+d[k][j])
    return d

print(floyd(graph))
```

## Result：

```
[[8, 4, 12, 19, 21, 11, 9, 8, 14], 
 [4, 8, 8, 15, 22, 12, 12, 11, 10], 
 [12, 8, 4, 7, 14, 4, 6, 7, 2], 
 [19, 15, 7, 14, 9, 11, 13, 14, 9], 
 [21, 22, 14, 9, 18, 10, 12, 13, 16], 
 [11, 12, 4, 11, 10, 4, 2, 3, 6], 
 [9, 12, 6, 13, 12, 2, 2, 1, 6], 
 [8, 11, 7, 14, 13, 3, 1, 2, 7], 
 [14, 10, 2, 9, 16, 6, 6, 7, 4]]

```

