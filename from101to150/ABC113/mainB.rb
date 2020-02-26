n = gets.chomp.to_i
t, a = gets.chomp.split(" ").map(&:to_f)
h = gets.chomp.split(" ").map(&:to_i)
diff = 1 << 40
ans = -1

n.times do |i|
    temp = t - h[i] * 0.006
    if (a-temp).abs < diff
        ans = i
        diff = (a-temp).abs
    end
end

puts ans+1