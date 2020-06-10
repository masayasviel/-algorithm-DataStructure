a, r, n = gets.chomp.split(" ").map(&:to_i)
maxim = 10 ** 9
is_large = false

if r == 1 then
    puts a
    exit
end

(n-1).times do
    a *= r
    if a > maxim then
        is_large = true
        break
    end
end

puts is_large ? "large" : a