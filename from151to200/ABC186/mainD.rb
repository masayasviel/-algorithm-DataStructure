N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i).sort
cumulative = [A.sum]
N.times do |i|
    cumulative << cumulative[i] - A[i]
end
ans = 0

N.times do |i|
    ans += (A[i] * (N-i) - cumulative[i]).abs
end

puts ans