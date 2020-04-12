inputs = []
5.times do
    inputs << gets.chomp.to_i
end
k = gets.chomp.to_i
puts inputs[-1] - inputs[0] > k ? ":(" : "Yay!"