---
title: Dijkstra最短路径算法的python函数实现
date: 2024-03-19 15:57:41
tags: Algorithm
category: CodeWorld
---

<iframe src="//player.bilibili.com/player.html?aid=586430293&bvid=BV1zz4y1m7Nq&cid=289260026&p=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true" width="100%" height="650px"> </iframe>

## 视频中的图的邻接矩阵表示法：

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

## Dijkstra最短路径算法的python函数实现：

```
def dijkstra(graph,starting_node,node_num):#graph[u][v]表示边e=(u,v)的权值，不存在时设为inf
    # 起始节点starting_node,节点数量node_num
    used = [False for _ in range(node_num)]  # 标记数组，used[v]值为False说明该顶点还没有访问过，在S中，否则在U中！
    distance = [float('inf') for _ in range(node_num)]  # 距离数组，distance[i]表示从原点s到i的最短距离，distance[s]=0
    #cost = [[float('inf') for _ in range(node_num)] for _ in range(node_num)]  # cost[u][v]表示边e=(u,v)的权值，不存在时设为inf
    distance[starting_node]=0
    while True:
        v=-1#v在这里相当于是一个哨兵，对包含起点s做统一处理！
        for u in range(node_num):#从未使用过的顶点中选择一个距离最小的顶点
            if not used[u] and (v==-1 or distance[u]<distance[v]):
                v=u
        if v==-1:#说明所有顶点都维护到S中了！
            break
        used[v]=True#将选定的顶点加入到S中，同时进行距离更新
        for u in range(node_num):#更新U中各个顶点到起点s的距离.之所以更新U中顶点的距离，是因为上一步中确定了k是求出的最短路径节点
            distance[u]=min(distance[u],distance[v]+graph[v][u])

    return distance

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

print(dijkstra(graph,0,9))
```

## Result：

```
[0, 4, 12, 19, 21, 11, 9, 8, 14]
```

