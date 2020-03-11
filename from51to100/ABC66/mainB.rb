s = gets.chomp
s = s[0..s.size-3]
a = s[0..(s.size/2-1)]
b = s[(s.size/2)..(s.size-1)]

while a != b
    s = s[0..s.size-3]
    a = s[0..(s.size/2-1)]
    b = s[(s.size/2)..(s.size-1)]
end

puts s.size