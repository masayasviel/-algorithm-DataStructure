n = gets.chomp.to_i
count = []
ans = ""

n.times do |i|
    s = gets.chomp.split("")
    h = Hash.new(0)
    s.each do |alphabet|
        h[alphabet] += 1
    end
    count << h.sort.to_h
end

("a".."z").each do |alphabet|
    min_count = 114514
    flag = true
    count.each do |h|
        if h.has_key?(alphabet)
            min_count = min_count > h[alphabet] ? h[alphabet] : min_count
        else
            flag = false
            break
        end
    end
    if flag
        ans += alphabet * min_count
    end
end

puts ans