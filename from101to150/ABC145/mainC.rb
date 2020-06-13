n = gets.chomp.to_i
town = []
n.times{town << gets.chomp.split(" ").map(&:to_i)}
ans = 0.0
bunnbo = 0.0

town.permutation(n).each do |arr|
    bunnbo += 1.0
    (n-1).times do |idx|
        xi, yi = arr[idx]
        xj, yj = arr[idx+1]
        ans += Math.sqrt((xi-xj)*(xi-xj) + (yi-yj)*(yi-yj))
    end
end

puts ans / bunnbo