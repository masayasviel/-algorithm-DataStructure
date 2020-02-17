n, k = gets.chomp.split(" ").map(&:to_i)
modZero = 0
modHarf = 0
1.upto(n) do |i|
    modZero += 1 if i % k == 0
    modHarf += 1 if k.even? && i % k == k/2
end

puts modZero**3 + modHarf**3