left, right = gets.chomp.split(" ").map(&:to_i)
mod = 2019

if right-left >= mod then
    puts 0
else
    ans = 1 << 40
    left.upto(right) do |i|
        left.upto(right) do |j|
            next if i == j
            tmp = i*j % mod
            ans = ans > tmp ? tmp : ans
        end
    end
    puts ans
end