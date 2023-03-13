MAX = 200010
n, w = gets.chomp.split.map(&:to_i)
use_water_per_min = Array.new(MAX, 0)
ans = true
n.times do |i|
    si, ti, pi = gets.chomp.split.map(&:to_i)
    use_water_per_min[si] += pi
    use_water_per_min[ti] -= pi
end

(0...(MAX-5)).each do |i|
    use_water_per_min[i+1] += use_water_per_min[i]
    if use_water_per_min[i] > w then
        ans = false
        break
    end
end

puts ans ? "Yes" : "No"
