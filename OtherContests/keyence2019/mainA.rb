n = gets.chomp.split.map(&:to_i)
ans = true
[1, 9, 7, 4].each do |e|
    ans = false unless n.include?(e)
end
puts ans ? "YES" : "NO"