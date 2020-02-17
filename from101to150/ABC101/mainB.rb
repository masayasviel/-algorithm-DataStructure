n = gets.to_i
num = n.to_s.split("").map{|i| i.to_i}.reduce{|sum, n| sum+n}

puts n%num==0 ? "Yes" : "No" 