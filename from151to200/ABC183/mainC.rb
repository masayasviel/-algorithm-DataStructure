n, k = gets.chomp.split.map(&:to_i)
t = []
n.times do
    t << gets.chomp.split.map(&:to_i)
end
ans = 0
nums = [*1...n]
nums.permutation(n-1).each do |per_arr|
    tmp = 0
    prev = 0
    per_arr.each do |i|
        tmp += t[prev][i]
        prev = i
    end
    tmp += t[prev][0]
    ans += 1 if tmp == k
end
puts ans