# https://atcoder.jp/contests/abc068/tasks/abc068_b

n = gets.chomp.to_i
ans = 1

while ans*2 <= n do
    ans *= 2
end

puts ans