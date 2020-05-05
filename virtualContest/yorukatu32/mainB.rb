# https://atcoder.jp/contests/abc066/tasks/abc066_b

s = gets.chomp
n = s.size
if n & 1 == 1 then
    n -= 1
    s.slice!(-1)
else
    s = s[0..(n-3)]
    n -= 2
end

while s[0...(n/2)] != s[(n/2)...n]
    s = s[0..(n-3)]
    n -= 2
end

puts s.size