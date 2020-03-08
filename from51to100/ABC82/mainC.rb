gets
a = gets.chomp.split(" ").map(&:to_i)
count_a = Hash.new(0)
ans = 0

a.each do |i|
    count_a[i.to_s] += 1
end

count_a.each do |num, counted|
    if num.to_i > counted then
        ans += counted
    elsif num.to_i < counted then
        ans += counted - num.to_i
    end
end

puts ans