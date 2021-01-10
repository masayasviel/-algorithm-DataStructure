n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
s = 0
n.times do |i|
    s += a[i] * b[i]
end
puts s == 0 ? "Yes" : "No"