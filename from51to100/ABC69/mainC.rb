n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
even = 0
odd = 0
four = 0
ans = false
a.each do |i|
    if i % 4 == 0 then
        four += 1
    elsif i % 2 == 0 then
        even += 1
    else
        odd += 1
    end
end

if odd.zero? then
    ans = true
elsif even.zero? && four >= odd-1 then
    ans = true
elsif four >= odd then
    ans = true
end

puts ans ? "Yes" : "No"