gets
a = gets.chomp.split(" ").map(&:to_i)
ans = 0
while a.all?{|i| i%2 == 0}
    a.map!{|i| i / 2}
    ans += 1
end

puts ans