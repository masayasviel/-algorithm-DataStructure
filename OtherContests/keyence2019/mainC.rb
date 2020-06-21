n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

if b.sum > a.sum then
    puts -1
    exit
end

plus = []
minus = []
n.times do |i|
    tmp = a[i] - b[i]
    if tmp > 0 then
        plus << tmp
    elsif tmp < 0 then
        minus << tmp
    end
end

if minus.empty? then
    puts 0
    exit
end

plus.sort!
minus.sort!

ans = 0
tmp = 0

until minus.empty? && tmp >= 0
    if tmp == 0 then
        tmp = minus.shift + plus.pop
        ans += 2
    elsif tmp > 0 then
        tmp += minus.shift
        ans += 1
    else
        tmp += plus.pop
        ans += 1
    end
end

puts ans