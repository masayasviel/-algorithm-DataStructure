N, D, H = gets.chomp.split.map(&:to_i)
ans = 0.0
N.times do
    di, hi = gets.chomp.split.map(&:to_f)
    tmp = (-di) * ((H - hi) / (D - di)) + hi
    ans = tmp if tmp > ans
end
puts ans