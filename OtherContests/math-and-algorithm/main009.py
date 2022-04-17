import sys

N, S = map(int, sys.stdin.readline().rstrip().split())
A = list(map(int, sys.stdin.readline().rstrip().split()))
SIZE = sum(A) + 1
dp = [[0] * SIZE for _ in range(N+1)]
dp[0][0] = 1

for i in range(1, N+1):
    a = A[i-1]
    for j in range(SIZE-a):
        dp[i][j] += dp[i-1][j]
        dp[i][j+a] += dp[i-1][j]

print(['No', 'Yes'][int(dp[N][S] > 0)])
