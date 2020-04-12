n = gets.chomp.to_i
s = gets.chomp.split("")
red = 0
green = 0
blue = 0
term = 0
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


n.times do |i|
    (i+1).upto(n-1) do |j|
        next if s[i] == s[j]
        k = j*2 - i
        next if k >= n || s[k] == s[i] || s[k] == s[j]
        term += 1
    end
end

ans = red * green * blue - term
puts ans