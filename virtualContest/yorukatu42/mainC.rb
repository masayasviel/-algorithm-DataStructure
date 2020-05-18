# https://atcoder.jp/contests/abc058/tasks/arc071_a

n = gets.chomp.to_i
inputs = []
ans = ""

n.times do
    inputs << gets.chomp.split("").sort
end

("a".."z").each do |alphabet|
    res = 1 << 40
    inputs.each do |s|
        tmp = s.count(alphabet)
        res = tmp > res ? res : tmp
    end
    ans += alphabet * res
end

puts ans