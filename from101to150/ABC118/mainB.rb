n, m = gets.chomp.split(" ").map(&:to_i)
res = Array.new(m, 0)
n.times do
    inputs = gets.chomp.split(" ").map(&:to_i)
    k = inputs.shift
    inputs.each do |a|
        res[a-1] += 1
    end
end
puts res.select{|x| x == n}.size