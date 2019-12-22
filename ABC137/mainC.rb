n = gets.chomp.to_i
count = Hash.new(0)
ans = 0
n.times do
    str = gets.chomp.split("").sort.join("")
    count[str] += 1
end
count.each do |key, value|
    if value >= 2
        ans += (value * (value - 1)) / 2
    end
end
puts ans