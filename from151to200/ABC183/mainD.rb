MAX = 200100
n, w = gets.chomp.split.map(&:to_i)
use_water_per_min = Array.new(MAX, 0)
ans = true
n.times do |i|
    si, ti, pi = gets.chomp.split.map(&:to_i)
    use_water_per_min[si] += pi
    use_water_per_min[ti] -= pi
end

ans = false if use_water_per_min[0] > w

(1...MAX).each do |i|
    use_water_per_min[i] += use_water_per_min[i-1]
    ans = false if use_water_per_min[i] > w
    break unless ans
end

puts ans ? "Yes" : "No"