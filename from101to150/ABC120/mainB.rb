a, b, k = gets.chomp.split(" ").map(&:to_i)
ans = []
1.upto(100) do |i|
    ans << i if a % i == 0 && b % i == 0
end
puts ans.reverse[k-1]