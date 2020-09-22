# https://atcoder.jp/contests/arc080/tasks/arc080_a

n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

multiple_4 = 0
multiple_2 = 0
multiple_other = 0

a.each do |item|
    if item % 4 == 0 then
        multiple_4 += 1
    elsif item % 2 == 0 then
        multiple_2 += 1
    else
        multiple_other += 1
    end
end

if multiple_4 == 0 then
    puts multiple_2 >= 2 && multiple_other == 0 ? "Yes" : "No"
else
    multiple_other += 1 if multiple_2 > 0
    puts multiple_4+1 >= multiple_other ? "Yes" : "No"
end