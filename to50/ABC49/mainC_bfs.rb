input = gets.chomp
words = ["dream", "dreamer", "erase", "eraser"]
queue = [input]
ans = false

until queue.empty? do
    s = queue.shift
    if s == "" then
        ans = true
        break
    end
    sn = s.size
    words.each do |w|
        wn = w.size
        if w == s[0...wn] then
            queue << s[wn...sn]
        end
    end
end

puts ans ? "YES" : "NO"