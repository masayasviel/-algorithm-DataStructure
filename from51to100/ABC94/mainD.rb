n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
if n == 2
    puts a[1].to_s + " " + a[0].to_s
    exit
end
max_num = a.pop
mi = []
a.each_with_index do |e, i|
    mi << [(e*2 - max_num).abs, i]
end
r = mi.min{|a, b| a[0] <=> b[0]}
puts [max_num, a[r[1]]].join(" ")