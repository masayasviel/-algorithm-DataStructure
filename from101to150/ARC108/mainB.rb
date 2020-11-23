N = gets.chomp.to_i
ans = N
s = gets.chomp.split("")
read = []

N.times do |i|
    if read.size >= 3 then
        if read[-1] + read[-2] + read[-3] == "xof" then
            3.times do
                read.pop
            end
            ans -= 3
        end
    end
    read << s[i]
end

if read.size >= 3 then
    if read[-1] + read[-2] + read[-3] == "xof" then
        3.times do
            read.pop
        end
        ans -= 3
    end
end

puts ans