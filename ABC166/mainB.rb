n, k = gets.chomp.split(" ").map(&:to_i)
ans = Array.new(n, 0)
k.times do
    gets
    a = gets.chomp.split(" ").map(&:to_i)
    a.each do |e|
        ans[e-1] += 1
    end
end

puts ans.count(0)