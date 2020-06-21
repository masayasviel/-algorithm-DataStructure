N, M = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
umami = Array.new(N, 0)
ans = Array.new(M, -1)
umami[0] = a[0]
ans[0] = 1

(1...M).each do |i|
    next if umami[-1] >= a[i]
    idx = umami.bsearch_index {|x| x < a[i]}
    ans[i] = idx+1
    umami[idx] = a[i]
end

puts ans.join("\n")