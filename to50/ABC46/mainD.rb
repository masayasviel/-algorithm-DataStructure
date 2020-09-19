s = gets.chomp.split("")
count_g = 0
count_p = 0
win = 0
lose = 0

s.each do |item|
    if count_p < count_g then
        win += 1 if item == "g"
        count_p += 1
    else
        lose += 1 if item == "p"
        count_g += 1
    end
end

puts win - lose