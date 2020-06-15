x, y = gets.chomp.split(" ").map(&:to_i)
ans = false

100.times do |a|
    100.times do |b|
        if a+b == x then
            ans = true if 4*a + 2*b == y
        end
    end
end

puts ans ? "Yes" : "No"