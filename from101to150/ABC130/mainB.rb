n, x = gets.chomp.split(" ").map(&:to_i)
li = gets.chomp.split(" ").map(&:to_i)
ans = 1
dist = 0
li.each do |e|
    dist += e
    break if dist > x
    ans += 1
end
puts ans