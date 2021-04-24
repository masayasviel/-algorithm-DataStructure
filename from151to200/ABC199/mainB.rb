N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
ranges = Array.new(1010, 0)

N.times do |i|
    (A[i]..B[i]).each do |j|
        ranges[j] += 1
    end
end

ans = 0

ranges.each do |r|
    ans += 1 if r == N
end

puts ans