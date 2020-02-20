a, b, k = gets.chomp.split(" ").map(&:to_i)
ans = []
if b-a+1 < k
    ans = [*a..b]
else
    a.upto(a+k-1) do |i|
        ans << i
    end
    b.downto(b-k+1) do |i|
        ans << i
    end
end
puts ans.sort.uniq