# https://atcoder.jp/contests/abc098/tasks/abc098_b

n = gets.chomp.to_i
s = gets.chomp.split("")
ans = 0

(n-1).times do |i|
    x = s[0..i]
    y = s[(i+1)..(n-1)]
    eql = (x & y).size
    ans = ans < eql ? eql : ans
end

puts ans