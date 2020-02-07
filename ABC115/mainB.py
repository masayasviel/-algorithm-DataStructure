n = int(input())
p = [int(input()) for i in range(n)]

mostExpensiveIndex = p.index(max(p))
p[mostExpensiveIndex] = max(p) // 2

print(sum(p))