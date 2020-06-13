# https://atcoder.jp/contests/abc088/tasks/abc088_c

c = []

3.times do
    c << gets.chomp.split(" ").map(&:to_i)
end

(0..100).each do |a1|
    (0..100).each do |a2|
        (0..100).each do |a3|
            flags = []
            3.times do |i|
                flag1 = c[i][0] - a1
                flag2 = c[i][1] - a2
                flag3 = c[i][2] - a3
                if flag1 == flag2 && flag2 == flag3 && flag3 == flag1 then
                    flags << true
                else
                    flags << false
                end
            end
            if flags.all?{|v| v} then
                puts "Yes"
                exit
            end
        end
    end
end

puts "No"