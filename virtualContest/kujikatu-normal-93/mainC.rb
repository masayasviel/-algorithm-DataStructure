# https://atcoder.jp/contests/abc162/tasks/abc162_d

n = gets.chomp.to_i
s = gets.chomp.split("")
red = 0
green = 0
blue = 0
n.times do |i|
    case s[i]
    when "R"
        red += 1
    when "G"
        green += 1
    when "B"
        blue += 1
    end
end
second_terms = 0

n.times do |i|
    ((i+1)...n).each do |j|
        next if s[i] == s[j]
        k = 2*j - i
        next if k >= n || s[i] == s[k] || s[j] == s[k]
        second_terms += 1
    end
end

puts red * green * blue - second_terms