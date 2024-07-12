---
title: python实现2024春晚魔术
date: 2024-03-02 18:16:43
tags: 有趣
category: CodeWorld
---
[#央视龙年春晚 魔术《守岁共此时》，邀请全国观众一起见证奇迹发生](https://v3-web.douyinvod.com/3c1e474b8d4df958fbf013aa57c58070/65c8bfe9/video/tos/cn/tos-cn-ve-15/osMGgBg4NAIwlRDMSzeywvBxKhADfAc4wxWElO/?a=6383&ch=26&cr=3&dr=0&lr=all&cd=0%7C0%7C0%7C3&cv=1&br=1884&bt=1884&cs=0&ds=6&ft=bvTKJbQQqUuqf_-0ao0ORVTYA0pia~IjejKJ-uAbH.0P3-I&mime_type=video_mp4&qs=1&rc=M2doOjxnaDg0PGgzZTdoZkBpajRtZmg6Zmo1cTMzNGkzM0BhLzJeXzMtNjYxMmItYC0zYSNsZC5scjQwZTBgLS1kLTBzcw%3D%3D&btag=e00038000&dy_q=1707650891&feature_id=46a7bb47b4fd1280f3d3825bf2b29388&l=20240211192810EDE2CE676F39C84C7832)


# python实现2024春晚魔术
```python
import random
cards=[1,2,3,4]
random.shuffle(cards)
print("打乱后的卡牌：",cards)
cards=cards+cards
print("撕开的卡牌：",cards)
name=int(input("姓名有几个字？"))
for i in range(name):
    cards.append(cards.pop(0))
print("当前卡牌；",cards)
top_three_cards=cards[:3]
else_cards=cards[3:]
insert_index=random.randint(1,5)
cards=else_cards[:insert_index]+top_three_cards+else_cards[insert_index:]
print("当前卡牌；",cards)
top_card=cards.pop(0)
region=input("你是南方人还是北方人？(“南”、“北”？)")
if region == "南":
    insert_count = 1
elif region == "北":
    insert_count = 2
else:
    insert_count = 3
top=cards[:insert_count]
else_cards=cards[insert_count:]
insert_index=random.randint(0,len(else_cards)-1)
cards=else_cards[:insert_index]+top+else_cards[insert_index:]
print("当前卡牌；",cards)
gender=input("“男”/“女”？")
if gender == "男":
    take_count = 1
elif gender == "女":
    take_count = 2
for i in range(take_count):
    cards.pop(0)
for i in range(len("见证奇迹的时刻")):
    cards.append(cards.pop(0))
while True:
    cards.append(cards.pop(0))
    cards.pop(0)
    if len(cards)==1:
        break
    else:
        print(cards)
print("你刚才藏起来的牌是：",top_card)
print("你手里剩下的牌是：",cards[0])
print("按任意键结束并关闭页面")
input() # 等待用户输入
```
