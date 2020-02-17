n, k, q = gets.chomp.split(" ").map(&:to_i)
point = Array.new(n, 0)

q.times do
    a = gets.chomp.to_i
    point[a-1] += 1
end

n.times do |i|
    puts k-(q-point[i]) > 0 ? "Yes" : "No"
end