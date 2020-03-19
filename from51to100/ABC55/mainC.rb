n, m = gets.chomp.split(" ").map(&:to_i)
if n*2 >= m
    puts m/2
    exit
end
m -= n*2
puts n + m/4