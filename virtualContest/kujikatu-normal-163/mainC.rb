# https://atcoder.jp/contests/arc069/tasks/arc069_a

s, c = gets.chomp.split.map(&:to_i)
ans = 0

if c >= s*2 then
    ans = s
    c -= s*2
    ans += c / 4
else
    ans = c / 2
end

puts ans