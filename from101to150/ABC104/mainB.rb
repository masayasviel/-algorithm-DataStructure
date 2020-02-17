arr = gets.chomp.split("")

a = arr[0]==="A"
c = arr.slice(2..arr.size-2).count("C") == 1
isLower = arr.select{|e| e =~ /[a-z]/}.size == arr.size - 2

puts (a && c && isLower) ? "AC" : "WA"