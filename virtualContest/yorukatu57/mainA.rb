# https://atcoder.jp/contests/abc125/tasks/abc125_b

n = gets.chomp.to_i
v = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)
ans = 0

n.times do |i|
    tmp = v[i] - c[i]
    if tmp > 0 then
        ans += tmp
    end
end
puts ans