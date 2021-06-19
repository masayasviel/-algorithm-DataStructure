N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

h = Hash.new(0)
A.each do |i|
    h[i] += 1
end

ans = 0
h.each do |i, cnt|
    ans += (N-cnt) * cnt
end

puts ans / 2