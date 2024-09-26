N = int(input())
biggest_head_size = 0
ans = 0

for _ in range(N):
    a, b = map(int, input().split())
    ans += a
    biggest_head_size = max(b-a, biggest_head_size)

print(ans + biggest_head_size)
