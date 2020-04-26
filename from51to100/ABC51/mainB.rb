k, s = gets.chomp.split(" ").map(&:to_i)
ans = 0

(k+1).times do |x|
    (k+1).times do |y|
        z = s-x-y
        ans += 1 if z <= k && z >= 0
    end
end

puts ans