import heapq
n, m = map(int, input().split())
a = list(map(lambda x: -int(x), input().split()))
heapq.heapify(a)

for i in range(m):
    largest = -heapq.heappop(a)
    largest = largest // 2
    heapq.heappush(a, -largest)

print(-sum(a))