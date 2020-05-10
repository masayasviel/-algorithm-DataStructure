n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

memo = {}
i = a[0] - 1
memo[a[0]] = 1
count = 2

while !memo.has_key?(a[i]) do
    memo[a[i]] = count
    i = a[i]-1
    count += 1
end

before_cycle_count = memo[a[i]]
ans = memo.to_a

if before_cycle_count >= k then
    puts ans[k-1][0]
else
    tmp = (k-before_cycle_count) % (ans.size-before_cycle_count+1) + before_cycle_count
    puts ans[tmp-1][0]
end