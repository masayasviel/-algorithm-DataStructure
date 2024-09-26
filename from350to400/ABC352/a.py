N, X, Y, Z = map(int, input().split())
r = range(Y, X+1) if X > Y else range(X, Y+1)
print(['No', 'Yes'][Z in r])
