n, m = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i).sort

if n >= m then
    puts 0
    exit
end

y = []

(m-1).times do |i|
    y << x[i+1] - x[i]
end

y = y.sort
not_visit_interval = 0

(n-1).times do
    not_visit_interval += y.pop
end

puts (x[m-1] - x[0]) - not_visit_interval