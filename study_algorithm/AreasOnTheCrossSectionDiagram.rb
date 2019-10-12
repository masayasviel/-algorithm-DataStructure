s = gets.chomp.split("")
result = 0
s1, s2 = [], []

s.each_with_index do |val, index|
    s1.push(index) if val === "\\"
    if val === "/" && !s1.empty?
        ip = s1.pop()
        a = index - ip
        result += a
        while !s2.empty? && s2[-1][0] > ip do
            a += s2.pop()[1]
        end
        s2.push([ip, a])
    end
end

puts result
puts s2.size.to_s << " " << s2.map{|e| e[1].to_s}.join(" ")