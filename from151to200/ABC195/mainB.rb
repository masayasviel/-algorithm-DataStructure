a, b, w = gets.chomp.split.map(&:to_i)
MAX = 1000010
w *= 1000
min_val = 1 << 40
max_val = -1

(1..MAX).each do |n|
    if a * n <= w && w <= b * n then
        min_val = [min_val, n].min
        max_val = [max_val, n].max
    end
end

puts max_val != -1 ? "#{min_val} #{max_val}" : "UNSATISFIABLE"