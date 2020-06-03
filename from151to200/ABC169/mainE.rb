n = gets.chomp.to_i
a = []
b = []

n.times do
    _a, _b = gets.chomp.split(" ").map(&:to_i)
    a << _a
    b << _b
end

a.sort!
b.sort!

if n % 2 == 0 then
    puts b[n/2] + b[n/2-1] - a[n/2] - a[n/2-1] + 1
else
    puts b[n/2] - a[n/2] + 1
end