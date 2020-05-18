k = gets.chomp.to_i
s = gets.chomp
n = s.size

if n <= k then
    puts s
else
    puts s[0...k] + "..."
end