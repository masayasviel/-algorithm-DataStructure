n, x, t = gets.chomp.split.map(&:to_i)
if n % x == 0 then
    puts (n/x) * t
else
    puts (n/x + 1) * t
end