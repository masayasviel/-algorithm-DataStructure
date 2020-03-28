side = list(map(int, input().split()))
side.sort()
print(side[0] * side[1] // 2)