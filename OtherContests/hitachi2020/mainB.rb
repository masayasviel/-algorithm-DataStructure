a, b, m = gets.chomp.split(" ").map(&:to_i)
ai = gets.chomp.split(" ").map(&:to_i)
bi = gets.chomp.split(" ").map(&:to_i)
ans = ai.min + bi.min

m.times do
    x, y, c = gets.chomp.split(" ").map(&:to_i)
    ans = [ans, ai[x-1] + bi[y-1] - c].min
end

puts ans