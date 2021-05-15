a = gets.chomp.split.map(&:to_i)
ans = false
a.permutation(3).each do |per|
    a, b, c = per
    if a - b == b - c then
        ans = true
    end
end

puts ans ? "Yes" : "No"