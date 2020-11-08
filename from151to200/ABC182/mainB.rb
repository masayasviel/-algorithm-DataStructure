require 'prime'
 
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
h = Hash.new(0)
 
a.each do |i|
    prime_arr = Prime.prime_division(i)
    prime_arr.each do |val, num|
        h[val] += 1
    end
end
 
tmp = 0
ans = 0
h.each do |k, v|
    if v > tmp then
        ans = k
        tmp = v
    end
end

puts ans