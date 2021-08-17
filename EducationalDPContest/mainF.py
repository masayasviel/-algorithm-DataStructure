from collections import deque
from sys import stdin

gets = lambda: stdin.readline().rstrip()

s = gets()
t = gets()
ss = len(s)
ts = len(t)
dp = [[0 for _ in range(ts+1)] for _ in range(ss+1)]

for i in range(1, ss+1):
    for j in range(1, ts+1):
        if s[i-1] == t[j-1]:
            dp[i][j] = dp[i-1][j-1] + 1
        dp[i][j] = max(dp[i-1][j], dp[i][j-1], dp[i][j])

ans = deque()
while ss > 0 and ts > 0:
    if dp[ss][ts] == dp[ss-1][ts]:
        ss -= 1
    elif dp[ss][ts] == dp[ss][ts-1]:
        ts -= 1
    else:
        ans.appendleft(s[ss-1])
        ss -= 1
        ts -= 1

print(''.join(ans))
