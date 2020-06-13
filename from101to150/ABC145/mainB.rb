n = gets.chomp.to_i
s = gets.chomp
if n & 1 == 1 then
    puts "No"
    exit
end
puts s[0...(n/2)] == s[(n/2)...n] ? "Yes" : "No"