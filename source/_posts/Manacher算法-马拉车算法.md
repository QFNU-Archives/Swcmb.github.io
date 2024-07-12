---
title: Manacher算法(马拉车算法)
date: 2024-05-08 17:07:09
tags: Algorithm
category: CodeWorld
---

<iframe src="//player.bilibili.com/player.html?aid=1600778160&bvid=BV172421F7CJ&cid=1443775155&p=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>

<iframe src="//player.bilibili.com/player.html?aid=1600778160&bvid=BV172421F7CJ&cid=1443775155&p=1" scrolling="no" border="0" frameborder="no" framespacing="0" allowfullscreen="true"> </iframe>

```python
#最长回文子串
def LongestPalindromicSubstring(s):#中心扩展法
    sn=["^","#"]+list("#".join(s))+["#","^"]
    ans=0
    for i in range(1,len(sn)-1):
        ext=0
        while(sn[i-ext-1]==sn[i+ext+1]):
            ext+=1
        ans=max(ext,ans)
    return ans
print(LongestPalindromicSubstring("abbacabaxabacabaa"))
def LongestPalindromicSubstring(s):#马拉车算法
    sn=["^","#"]+list("#".join(s))+["#","^"]
    p=[0 for i in range(len(sn))]
    c=0
    r=0
    for i in range(1,len(sn)-1):
        if i<=r:
            p[i]=min(r-i,p[2*c-i])
        while(sn[i-p[i]-1]==sn[i+p[i]+1]):
            p[i]+=1
        if p[i]+i>r:
            r=p[i]+i
            c=i
    return max(p)
print(LongestPalindromicSubstring("abbacabaxabacabaa"))
```

