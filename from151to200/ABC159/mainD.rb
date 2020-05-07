n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
a.each do |i|
    h[i] += 1
end
sum = 0
h.each do |key, val|
    sum += val * (val - 1) / 2
end
a.each do |i|
    if h[i] <= 2
        puts sum - h[i] * (h[i] - 1) / 2
    else
        puts sum - (h[i] * (h[i] - 1)) / 2 + ((h[i] - 1) * (h[i] - 2)) / 2
    end
end