n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
if n == 1 then
    puts 0
    exit
end
costs = Array.new(n).map{Array.new(201)}
a.each_with_index do |e, i|
    (-100..100).each do |j|
        costs[i][100+j] = (e-j)**2
    end
end

costs = costs.transpose
ans = []

costs.each do |arr|
    ans << arr.inject(:+)
end

puts ans.min