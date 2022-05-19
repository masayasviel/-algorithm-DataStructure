f = ->(x) { return x*x + 2*x + 3 }
t = gets.chomp.to_i
puts f[f[f[t]+t] + f[f[t]]]