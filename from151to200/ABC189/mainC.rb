n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
a << 0
stack = [] # [num, position]
ans = 0

(0..n).each do |i|
    rect = [a[i], i]
    if stack.empty? || stack[-1][0] < rect[0] then
        stack << rect
    else
        target = i
        while !stack.empty? && stack[-1][0] >= rect[0] do
            num, pos = stack.pop
            tmp = num * (i - pos)
            ans = tmp if ans < tmp
            target = pos
        end
        rect[1] = target
        stack << rect
    end
end

puts ans