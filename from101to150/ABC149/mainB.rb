a, b, k = gets.chomp.split(" ").map(&:to_i)
ans = [a, b]
ans[0] -= [a, k].min
if ans[0] == 0 && k > 0 then
    k -= a
    ans[1] -= [k, b].min
end

puts ans.join(" ")