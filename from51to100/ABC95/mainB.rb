n, x = gets.chomp.split(" ").map(&:to_i)
minGram = 1000
n.times do
    m = gets.chomp.to_i
    x -= m
    minGram = minGram > m ? m : minGram
end
puts n + (x/minGram)