s = gets.chomp.split("").reverse
t = gets.chomp.split("").reverse
res = 1919810

(s.size - t.size + 1).times do |i|
    flag = true
    t.size.times do |j|
        next if s[i+j] == "?"
        if s[i+j] != t[j]
            flag = false
            break
        end
    end
    if flag then
        res = i
        break
    end
end

if res > 50
    puts "UNRESTORABLE"
else
    t.size.times do |i|
        s[res + i] = t[i]
    end
    puts s.reverse.join("").gsub(/\?/, "a")
end