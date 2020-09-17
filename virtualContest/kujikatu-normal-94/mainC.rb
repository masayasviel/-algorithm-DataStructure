# https://atcoder.jp/contests/abc143/tasks/abc143_d

n = gets.chomp.to_i
logs = gets.chomp.split.map(&:to_i).sort
ans = 0
n.times do |i|
    (i+1).upto(n-1) do |j|
        c = logs.bsearch_index{|x| x >= (logs[i]+logs[j])} || n
        tmp = c - (j+1)
        ans += tmp if tmp > 0
    end
end

puts ans