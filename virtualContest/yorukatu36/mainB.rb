# https://atcoder.jp/contests/abc091/tasks/abc091_b

ad = Hash.new(0)
disad = Hash.new(0)
ans = 0

n = gets.chomp.to_i
n.times do
    ad[gets.chomp] += 1
end
m = gets.chomp.to_i
m.times do
    disad[gets.chomp] += 1
end

ad.each do |key, val|
    tmp = disad.has_key?(key) ? val-disad[key] : val
    ans = [tmp, ans].max
end

puts ans