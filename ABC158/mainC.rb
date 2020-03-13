a, b = gets.chomp.split(" ").map(&:to_f)
ans = -1
2000.times do |i|
    if (i * 0.08).floor == a && (i * 0.1).floor == b then
        ans = i
        break
    end
end
puts ans