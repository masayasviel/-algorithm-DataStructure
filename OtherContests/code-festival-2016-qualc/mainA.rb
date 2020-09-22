s = gets.chomp.split("")
c = false
f = false
s.each do |i|
    c = true if i == "C"
    f = true if c && i == "F"
end
puts c && f ? "Yes" : "No"