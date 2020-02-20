input()
a = [int(i) for i in input().split(" ")]
ans = 0
while all(i%2 == 0 for i in a):
    a = [n//2 for n in a]
    ans += 1
print(ans)