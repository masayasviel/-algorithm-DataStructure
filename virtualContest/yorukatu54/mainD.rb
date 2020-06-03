# https://atcoder.jp/contests/abc148/tasks/abc148_e

n = gets.chomp.to_i

if n < 10 || n & 1 == 1 then
    puts 0
    exit
end

ans = 0
while 10 <= n do
    ans += n/10
    n /= 5
end

puts ans