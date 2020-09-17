# https://atcoder.jp/contests/agc046/tasks/agc046_a

x = gets.chomp.to_i
current = x
k = 1
until current == 0 do
    current += x
    current %= 360
    k += 1
end
puts k