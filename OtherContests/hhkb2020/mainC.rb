MAX = 200010
N = gets.chomp.to_i
numbers = gets.chomp.split.map(&:to_i)
memo = Array.new(MAX, false)
ans = []
idx = 0
numbers.each do |num|
    memo[num] = true
    while memo[idx] do
        idx += 1
    end
    ans << idx
end
puts ans.join("\n")