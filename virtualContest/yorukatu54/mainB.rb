# https://atcoder.jp/contests/abc093/tasks/arc094_a

inputs = gets.chomp.split(" ").map(&:to_i).sort
ans = 0
is_all = inputs[0]

until inputs.all?{|v| v == is_all} do
    if inputs[0] + 2 <= inputs[2]
        inputs[0] += 2
    else
        inputs[0] += 1
        inputs[1] += 1
    end
    inputs.sort!
    is_all = inputs[0]
    ans += 1
end

puts ans