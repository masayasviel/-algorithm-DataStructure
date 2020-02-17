k, x = gets.chomp.split(" ").map(&:to_i)
min = x - (k - 1)
max = x + (k - 1)
ans = ""
min.upto(max) do |i|
    ans << i.to_s + " "
end
puts ans