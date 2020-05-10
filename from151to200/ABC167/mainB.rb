a, b, c, k = gets.chomp.split(" ").map(&:to_i)
if k <= a then
    puts k
    exit
end

k -= a

if k <= b then
    puts a
    exit
end

k -= b

puts a-[k, c].min