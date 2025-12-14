# @Version : 1.0
# @Author : sandro
# @Time :2025/12/14 10:29

score = float(input("请输入成绩："))

if 90 <= score <= 100:
    print(f"{score} 是优秀成绩")
elif 80 <= score < 90:
    print(f"{score} 是优良成绩")
elif 70 <= score < 80:
    print(f"{score} 是中等成绩")
elif 60 <= score < 70:
    print(f"{score} 是较差成绩")
elif 0 <= score < 60:
    print(f"{score} 没有通过考试")
else:
    print(f"{score} 分数异常")
