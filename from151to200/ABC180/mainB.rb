n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i).map(&:abs)
ans1 = 0
ans2 = 0
ans3 = -(1 << 40)

x.each do |i|
    ans1 += i
    ans2 += i*i
    ans3 = ans3 < i ? i : ans3
end

puts ans1
puts Math.sqrt(ans2)
puts ans3