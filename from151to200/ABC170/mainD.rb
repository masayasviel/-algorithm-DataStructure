n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
ans = Array.new(a[-1]+1, false)
h = Array.new(a[-1]+1, 0)

a.each do |i|
    ans[i] = true
    h[i] += 1
end

a.each do |i|
    next unless ans[i]
    ans[i] = false if h[i] > 1
   
    (i*2).step(a[-1], i) do |j|
      ans[j] = false
    end
end

puts ans.count(true)