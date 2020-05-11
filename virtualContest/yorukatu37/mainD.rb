# https://atcoder.jp/contests/arc080/tasks/arc080_b

h, w = gets.chomp.split(" ").map(&:to_i)
n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

ans = Array.new(h).map{Array.new(w)}
ptr_h = 0
ptr_w = 0

a.each_with_index do |color_num, i|
    color_num.times do
        ans[ptr_h][ptr_w] = i+1
        if ptr_h % 2 == 0 then
            ptr_w += 1
        else
            ptr_w -= 1
        end
        if w <= ptr_w then
            ptr_h += 1
            ptr_w -= 1
        end
        if 0 > ptr_w then
            ptr_h += 1
            ptr_w += 1
        end
    end
end

ans.each do |res|
    puts res.join(" ")
end