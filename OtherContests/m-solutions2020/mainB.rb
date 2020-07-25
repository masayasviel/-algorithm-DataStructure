a, b, c = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i
counter = 0
while a >= b do
    b *= 2
    counter += 1
end
while b >= c do
    c *= 2
    counter += 1
end

puts counter <= k ? "Yes" : "No"