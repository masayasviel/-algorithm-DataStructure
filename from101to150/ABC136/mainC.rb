gets
h = gets.chomp.split(" ").map(&:to_i)
ans = true
prev_max = h[0]

h.each do |i|
    if i < prev_max - 1
        ans = false
        break
    end
    prev_max = i > prev_max ? i : prev_max
end

puts ans ? "Yes" : "No"