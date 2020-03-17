s = gets.chomp.split("")
puts s.size == s.uniq.size ? "yes" : "no"