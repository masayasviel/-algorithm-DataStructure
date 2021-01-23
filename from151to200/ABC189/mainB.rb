require "bigdecimal"
require "bigdecimal/util"

n, x = gets.chomp.split.map(&:to_i)
x = x.to_d
s = 0.0
ans = -1

n.times do |i|
    v, _p = gets.chomp.split.map(&:to_d)
    s += v * _p / 100
    if s > x then
        ans = i+1
        break
    end
end

puts ans